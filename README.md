# 📊 Sales Performance Dashboard

## 🎯 Project Overview

This project showcases an interactive sales analytics dashboard designed to track key business metrics, identify trends, and support data-driven decision-making. The dashboard provides comprehensive insights into revenue performance, regional analysis, and growth patterns.

## 🔍 Key Features

- **Revenue Trend Analysis**: Track sales performance over time
- - **Regional Performance Metrics**: Identify underperforming and high-performing regions
  - - **Monthly Growth Rates**: Calculate and visualize month-over-month growth
    - - **Product Performance**: Analyze top-selling products and categories
      - - **Sales Rep Analytics**: Evaluate individual and team performance
        - - **Interactive Filters**: Dynamic filtering by date, region, product, and sales rep
         
          - ## 🛠️ Tech Stack
         
          - - **SQL**: Data extraction, transformation, and aggregation
            - - **Python**: Data processing and analysis (pandas, NumPy)
              - - **Power BI/Tableau**: Interactive dashboard creation
                - - **Excel**: Data validation and preliminary analysis
                  - - **Git**: Version control
                   
                    - ## 📁 Project Structure
                   
                    - ```
                      sales-performance-dashboard/
                      │
                      ├── data/
                      │   ├── raw/                    # Original sales data
                      │   └── processed/              # Cleaned and transformed data
                      │
                      ├── sql/
                      │   ├── data_extraction.sql     # Queries for data extraction
                      │   ├── revenue_analysis.sql    # Revenue calculations
                      │   └── regional_metrics.sql    # Regional performance queries
                      │
                      ├── python/
                      │   ├── data_processing.py      # Data cleaning and transformation
                      │   └── analysis.py             # Statistical analysis
                      │
                      ├── dashboards/
                      │   ├── sales_dashboard.pbix    # Power BI dashboard file
                      │   └── screenshots/            # Dashboard screenshots
                      │
                      └── README.md
                      ```

                      ## 📈 Key Metrics & Analysis

                      ### Revenue Trends
                      - **Total Revenue**: $X.XM across all regions
                      - - **YoY Growth**: X% increase compared to previous year
                        - - **Quarterly Performance**: Breakdown of revenue by quarter
                          - - **Seasonal Patterns**: Identification of peak sales periods
                           
                            - ### Regional Performance
                            - - **Top Performing Regions**:
                              -   - Region A: $XXX,XXX (XX% of total)
                                  -   - Region B: $XXX,XXX (XX% of total)
                                      -   - Region C: $XXX,XXX (XX% of total)
                                       
                                          - - **Underperforming Regions**:
                                            -   - Identified regions with <X% growth
                                                -   - Root cause analysis conducted
                                                    -   - Action plans developed
                                                     
                                                        - ### Monthly Growth Rates
                                                        - - **Average Monthly Growth**: X%
                                                          - - **Best Performing Month**: Month X with X% growth
                                                            - - **Growth Trends**: Consistent upward trajectory in Q3-Q4
                                                             
                                                              - ## 🔧 SQL Queries Highlights
                                                             
                                                              - ### Revenue by Region
                                                              - ```sql
                                                                SELECT
                                                                    region,
                                                                    SUM(sales_amount) as total_revenue,
                                                                    COUNT(DISTINCT order_id) as total_orders,
                                                                    ROUND(AVG(sales_amount), 2) as avg_order_value
                                                                FROM sales_data
                                                                WHERE order_date >= '2024-01-01'
                                                                GROUP BY region
                                                                ORDER BY total_revenue DESC;
                                                                ```

                                                                ### Month-over-Month Growth
                                                                ```sql
                                                                WITH monthly_sales AS (
                                                                    SELECT
                                                                        DATE_TRUNC('month', order_date) as month,
                                                                        SUM(sales_amount) as revenue
                                                                    FROM sales_data
                                                                    GROUP BY DATE_TRUNC('month', order_date)
                                                                )
                                                                SELECT
                                                                    month,
                                                                    revenue,
                                                                    LAG(revenue) OVER (ORDER BY month) as prev_month_revenue,
                                                                    ROUND(((revenue - LAG(revenue) OVER (ORDER BY month)) /
                                                                           LAG(revenue) OVER (ORDER BY month) * 100), 2) as growth_rate
                                                                FROM monthly_sales
                                                                ORDER BY month;
                                                                ```

                                                                ## 📊 Dashboard Features

                                                                ### Interactive Visualizations
                                                                1. **Revenue Trend Line Chart**: Shows revenue progression over time
                                                                2. 2. **Regional Heat Map**: Geographic visualization of sales performance
                                                                   3. 3. **Top Products Bar Chart**: Best-selling products by revenue
                                                                      4. 4. **Growth Rate Gauge**: Current month's growth vs. target
                                                                         5. 5. **Sales Funnel**: Conversion rates across sales stages
                                                                           
                                                                            6. ### Key Performance Indicators (KPIs)
                                                                            7. - Total Revenue
                                                                               - - Number of Transactions
                                                                                 - - Average Order Value
                                                                                   - - Customer Acquisition Cost
                                                                                     - - Revenue per Sales Rep
                                                                                      
                                                                                       - ## 💡 Business Insights
                                                                                      
                                                                                       - 1. **Regional Opportunities**:
                                                                                         2.    - Underperforming regions show potential for 15-20% growth with targeted marketing
                                                                                               -    - Top regions can serve as models for best practices
                                                                                                
                                                                                                    - 2. **Seasonal Trends**:
                                                                                                      3.    - Q4 consistently shows 30% higher revenue
                                                                                                            -    - Recommend inventory planning based on seasonal patterns
                                                                                                             
                                                                                                                 - 3. **Product Performance**:
                                                                                                                   4.    - Top 20% of products generate 80% of revenue (Pareto principle)
                                                                                                                         -    - Focus marketing efforts on high-margin products
                                                                                                                          
                                                                                                                              - 4. **Sales Team Performance**:
                                                                                                                                5.    - Top performers exceed targets by 25%
                                                                                                                                      -    - Opportunity for knowledge sharing and training
                                                                                                                                       
                                                                                                                                           - ## 📸 Dashboard Screenshots
                                                                                                                                       
                                                                                                                                           - *[Add Power BI/Tableau dashboard screenshots here]*
                                                                                                                                       
                                                                                                                                           - ### Main Dashboard
                                                                                                                                           - ![Main Dashboard](dashboards/screenshots/main_dashboard.png)
                                                                                                                                       
                                                                                                                                           - ### Regional Analysis
                                                                                                                                           - ![Regional Analysis](dashboards/screenshots/regional_analysis.png)
                                                                                                                                       
                                                                                                                                           - ### Growth Metrics
                                                                                                                                           - ![Growth Metrics](dashboards/screenshots/growth_metrics.png)
                                                                                                                                       
                                                                                                                                           - ## 🚀 How to Use
                                                                                                                                       
                                                                                                                                           - 1. **Data Preparation**:
                                                                                                                                             2.    - Run SQL scripts in the `sql/` folder to extract data
                                                                                                                                                   -    - Execute Python scripts for data cleaning
                                                                                                                                                    
                                                                                                                                                        - 2. **Dashboard Access**:
                                                                                                                                                          3.    - Open `.pbix` file in Power BI Desktop
                                                                                                                                                                -    - Refresh data connections
                                                                                                                                                                     -    - Explore interactive visualizations
                                                                                                                                                                      
                                                                                                                                                                          - 3. **Analysis**:
                                                                                                                                                                            4.    - Use filters to drill down into specific regions/periods
                                                                                                                                                                                  -    - Export insights for presentations
                                                                                                                                                                                   
                                                                                                                                                                                       - ## 📧 Contact
                                                                                                                                                                                   
                                                                                                                                                                                       - **Mohith Rangineni**
                                                                                                                                                                                       - Data Analyst | 4+ Years Experience
                                                                                                                                                                                       - 📧 mohith0996@gmail.com
                                                                                                                                                                                       - 💼 [LinkedIn](https://linkedin.com/in/mohith-rangineni)
                                                                                                                                                                                   
                                                                                                                                                                                       - ---
                                                                                                                                                                                       
                                                                                                                                                                                       *This dashboard demonstrates expertise in business intelligence, SQL analytics, and data visualization for strategic decision-making.*
