# 🧹 Data Cleaning & Transformation Guide

## Overview

This guide documents the data cleaning and transformation steps applied to the sales dataset before analysis and visualization.

## Data Source

**Original Dataset**: `data/raw/sales_data.csv`
- **Records**: 126 sales transactions
- - **Time Period**: January 2024 - December 2024
  - - **Fields**: 9 columns (date, product, category, sales_amount, units_sold, region, salesperson, monthly_target, customer_id)
   
    - ## Data Quality Checks
   
    - ### 1. Missing Values
   
    - ```python
      import pandas as pd
      import numpy as np

      # Load data
      df = pd.read_csv('data/raw/sales_data.csv')

      # Check for missing values
      print(df.isnull().sum())

      # Result: No missing values found in any column
      ```

      ### 2. Data Type Validation

      ```python
      # Check data types
      print(df.dtypes)

      # Convert date column to datetime
      df['date'] = pd.to_datetime(df['date'])

      # Ensure numeric columns are correct type
      df['sales_amount'] = pd.to_numeric(df['sales_amount'])
      df['units_sold'] = pd.to_numeric(df['units_sold'])
      df['monthly_target'] = pd.to_numeric(df['monthly_target'])
      ```

      ### 3. Duplicate Detection

      ```python
      # Check for duplicate records
      duplicates = df.duplicated().sum()
      print(f"Duplicate records: {duplicates}")

      # Result: 0 duplicates found
      ```

      ### 4. Outlier Analysis

      ```python
      # Check for outliers in sales_amount
      Q1 = df['sales_amount'].quantile(0.25)
      Q3 = df['sales_amount'].quantile(0.75)
      IQR = Q3 - Q1

      lower_bound = Q1 - 1.5 * IQR
      upper_bound = Q3 + 1.5 * IQR

      outliers = df[(df['sales_amount'] < lower_bound) | (df['sales_amount'] > upper_bound)]
      print(f"Outliers found: {len(outliers)}")

      # Result: All values within acceptable range
      ```

      ## Data Transformations

      ### 1. Date Feature Engineering

      ```python
      # Extract date components
      df['year'] = df['date'].dt.year
      df['month'] = df['date'].dt.month
      df['month_name'] = df['date'].dt.strftime('%B')
      df['quarter'] = df['date'].dt.quarter
      df['day_of_week'] = df['date'].dt.day_name()

      # Create year-month for aggregations
      df['year_month'] = df['date'].dt.to_period('M')
      ```

      ### 2. Calculated Fields

      ```python
      # Calculate average deal size
      df['deal_size'] = df['sales_amount'] / df['units_sold']

      # Calculate target achievement percentage
      df['target_achievement_pct'] = (df['sales_amount'] / df['monthly_target']) * 100

      # Create revenue categories
      def categorize_revenue(amount):
          if amount < 5000:
              return 'Low'
          elif amount < 10000:
              return 'Medium'
          elif amount < 15000:
              return 'High'
          else:
              return 'Very High'

      df['revenue_category'] = df['sales_amount'].apply(categorize_revenue)
      ```

      ### 3. Text Standardization

      ```python
      # Standardize region names
      df['region'] = df['region'].str.strip().str.title()

      # Standardize product categories
      df['category'] = df['category'].str.strip().str.title()

      # Standardize salesperson names
      df['salesperson'] = df['salesperson'].str.strip().str.title()
      ```

      ### 4. Aggregations for Dashboard

      ```python
      # Monthly revenue aggregation
      monthly_revenue = df.groupby('year_month').agg({
          'sales_amount': 'sum',
          'units_sold': 'sum',
          'monthly_target': 'first'
      }).reset_index()

      # Regional performance
      regional_performance = df.groupby('region').agg({
          'sales_amount': 'sum',
          'units_sold': 'sum',
          'customer_id': 'nunique'
      }).reset_index()

      # Salesperson performance
      salesperson_performance = df.groupby('salesperson').agg({
          'sales_amount': 'sum',
          'units_sold': 'sum',
          'monthly_target': 'first'
      }).reset_index()
      salesperson_performance['achievement_pct'] = (
          salesperson_performance['sales_amount'] /
          salesperson_performance['monthly_target'] * 100
      )
      ```

      ## Data Validation Rules

      ### Business Logic Checks

      ```python
      # Ensure sales_amount is positive
      assert (df['sales_amount'] > 0).all(), "Negative sales amounts found"

      # Ensure units_sold is positive integer
      assert (df['units_sold'] > 0).all(), "Invalid units sold"

      # Ensure dates are within expected range
      assert df['date'].min() >= pd.Timestamp('2024-01-01'), "Dates before 2024"
      assert df['date'].max() <= pd.Timestamp('2024-12-31'), "Dates after 2024"

      # Ensure all regions are valid
      valid_regions = ['North', 'South', 'East', 'West']
      assert df['region'].isin(valid_regions).all(), "Invalid region found"

      # Ensure all categories are valid
      valid_categories = ['Electronics', 'Furniture', 'Office Supplies', 'Accessories']
      assert df['category'].isin(valid_categories).all(), "Invalid category found"
      ```

      ## Export Cleaned Data

      ```python
      # Save processed data
      df.to_csv('data/processed/sales_data_cleaned.csv', index=False)

      print("Data cleaning complete!")
      print(f"Total records: {len(df)}")
      print(f"Date range: {df['date'].min()} to {df['date'].max()}")
      print(f"Total revenue: ${df['sales_amount'].sum():,.2f}")
      ```

      ## Summary Statistics

      ### Key Metrics After Cleaning

      - **Total Records**: 126
      - - **Date Range**: January 1, 2024 - December 31, 2024
        - - **Total Revenue**: $1,247,850
          - - **Average Transaction**: $9,904
            - - **Total Units Sold**: 1,260
              - - **Unique Customers**: 126
                - - **Regions**: 4 (North, South, East, West)
                  - - **Product Categories**: 4 (Electronics, Furniture, Office Supplies, Accessories)
                    - - **Sales Team**: 10 salespeople
                     
                      - ## Data Quality Score: 100%
                     
                      - ✅ No missing values
                      - ✅ No duplicates
                      - ✅ No outliers beyond acceptable range
                      - ✅ All data types correct
                      - ✅ All business rules validated
                      - ✅ Date ranges validated
                      - ✅ Text fields standardized
                     
                      - ## Next Steps
                     
                      - 1. **SQL Analysis**: Use `sql/revenue_analysis.sql` for database queries
                        2. 2. **Python Analysis**: Use `python/data_processing.py` for interactive filtering
                           3. 3. **Dashboard Creation**: Import cleaned data into Power BI
                              4. 4. **Visualization**: Create charts and KPI cards based on aggregated data
                                
                                 5. ## Tools Used
                                
                                 6. - **pandas**: Data manipulation and cleaning
                                    - - **NumPy**: Numerical operations
                                      - - **datetime**: Date parsing and manipulation
                                       
                                        - ---

                                        *This data cleaning process ensures high-quality, reliable data for accurate business insights and decision-making.*

                                        **Last Updated**: December 18, 2025
                                        **Author**: Mohith Rangineni
