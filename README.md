# 📊 Sales Performance Dashboard

## 📈 Project Overview

A comprehensive data analytics dashboard designed to visualize company sales performance and key business metrics. This project demonstrates end-to-end data analysis skills including data processing, SQL querying, Python analysis, and interactive dashboard creation.

## 🎯 Objective

Provide actionable insights on revenue trends, target achievement, product performance, and regional sales to support data-driven business decisions and identify growth opportunities.

## 🧰 Tools Used

- **Power BI** - Interactive dashboard creation and data visualization
- - **SQL** - Data extraction, transformation, and complex aggregations
  - - **Python** - Data processing, cleaning, and statistical analysis (pandas, NumPy)
    - - **Excel/CSV** - Data storage and preliminary validation
      - - **Git/GitHub** - Version control and project documentation
       
        - ## 🗂️ Key Metrics
       
        - The dashboard tracks 8 core KPIs to provide comprehensive sales insights:
       
        - ### 1. **Total Revenue**
        - - **Overall**: $1,247,850
          - - **Month-to-Date (MTD)**: $98,450
            - - **Year-to-Date (YTD)**: $1,247,850
             
              - ### 2. **Revenue vs Target**
              - - **Annual Target**: $1,200,000
                - - **Achievement Rate**: 104.2%
                  - - **Surplus**: +$47,850
                   
                    - ### 3. **Growth Metrics**
                    - - **Year-over-Year Growth**: +18.5%
                      - - **Average Monthly Growth**: +12.3%
                        - - **Best Month**: December (+22.1% MoM)
                         
                          - ### 4. **Sales by Region**
                          - - **West**: $387,450 (31.0%)
                            - - **East**: $349,200 (28.0%)
                              - - **North**: $311,550 (25.0%)
                                - - **South**: $199,650 (16.0%)
                                 
                                  - ### 5. **Sales by Product Category**
                                  - - **Electronics**: $561,533 (45%)
                                    - - **Furniture**: $349,398 (28%)
                                      - - **Office Supplies**: $224,613 (18%)
                                        - - **Accessories**: $112,306 (9%)
                                         
                                          - ### 6. **Top 5 Salespeople**
                                          - 1. Sarah Johnson - $156,200 (112% of target)
                                            2. 2. Michael Chen - $148,750 (108% of target)
                                               3. 3. Emily Rodriguez - $142,300 (105% of target)
                                                  4. 4. David Kim - $138,900 (102% of target)
                                                     5. 5. Jessica Martinez - $135,450 (99% of target)
                                                       
                                                        6. ### 7. **Bottom 5 Salespeople** (Coaching Opportunities)
                                                        7. 1. Tom Wilson - $78,500 (82% of target)
                                                           2. 2. Lisa Anderson - $81,200 (85% of target)
                                                              3. 3. James Taylor - $84,600 (88% of target)
                                                                 4. 4. Maria Garcia - $87,300 (91% of target)
                                                                    5. 5. Robert Brown - $89,800 (93% of target)
                                                                      
                                                                       6. ### 8. **Units Sold & Deal Size**
                                                                       7. - **Total Units**: 1,260 units
                                                                          - - **Average Deal Size**: $9,904
                                                                            - - **Peak Month Units**: 142 units (December)
                                                                             
                                                                              - ## 💡 Key Insights
                                                                             
                                                                              - ### 1. Strong Overall Performance
                                                                              - - Successfully exceeded annual revenue target by 4.2%, demonstrating effective sales strategies and market demand
                                                                                - - Consistent growth trajectory with 9 out of 12 months meeting or exceeding monthly targets
                                                                                  - - Year-over-year growth of 18.5% indicates healthy business expansion
                                                                                   
                                                                                    - ### 2. Regional Performance Disparities
                                                                                    - - **West region dominates** with 31% of total revenue, suggesting successful market penetration and strong customer base
                                                                                      - - **South region underperforms** at only 16% of revenue, presenting a clear opportunity for strategic intervention
                                                                                        - - Recommendation: Analyze and replicate West region's best practices in underperforming territories
                                                                                         
                                                                                          - ### 3. Product Category Concentration
                                                                                          - - **Electronics drives nearly half** (45%) of all revenue, indicating strong product-market fit but also concentration risk
                                                                                            - - **Accessories category shows untapped potential** at only 9% of revenue - opportunity for targeted marketing campaigns
                                                                                              - - Furniture maintains steady 28% contribution, providing reliable baseline revenue
                                                                                               
                                                                                                - ### 4. Sales Team Performance Gap
                                                                                                - - **Top 5 performers consistently exceed targets** (99-112% achievement), demonstrating effective sales techniques
                                                                                                  - - **Bottom 5 performers need support** (82-93% achievement), suggesting need for coaching, training, or territory reassignment
                                                                                                    - - Average team achievement of 98.5% shows overall competence with room for improvement
                                                                                                     
                                                                                                      - ### 5. Seasonal Patterns Identified
                                                                                                      - - **Q4 surge** (November-December) shows 20%+ growth, likely driven by holiday shopping and year-end budget spending
                                                                                                        - - **Mid-year dip** (July-August) suggests seasonal slowdown - opportunity for targeted summer promotions
                                                                                                          - - **Spring promotion impact** visible in March (+15.2% growth) validates marketing campaign effectiveness
                                                                                                           
                                                                                                            - ## 📁 Files
                                                                                                           
                                                                                                            - ```
                                                                                                              sales-performance-dashboard/
                                                                                                              │
                                                                                                              ├── data/
                                                                                                              │   └── raw/
                                                                                                              │       └── sales_data.csv          # Complete sales dataset (126 records)
                                                                                                              │
                                                                                                              ├── sql/
                                                                                                              │   └── revenue_analysis.sql        # SQL queries for all KPI calculations
                                                                                                              │
                                                                                                              ├── python/
                                                                                                              │   └── data_processing.py          # Python script with filtering & analysis
                                                                                                              │
                                                                                                              ├── dashboards/
                                                                                                              │   └── DASHBOARD_GUIDE.md          # Detailed dashboard documentation
                                                                                                              │
                                                                                                              └── README.md                        # Project overview (this file)
                                                                                                              ```
                                                                                                              
                                                                                                              ## 🎨 Dashboard Features
                                                                                                              
                                                                                                              ### Interactive Filters
                                                                                                              - **Date Range Selector**: Custom date ranges, MTD, QTD, YTD presets
                                                                                                              - - **Region Filter**: Multi-select for North, South, East, West
                                                                                                                - - **Product Category Filter**: Electronics, Furniture, Office Supplies, Accessories
                                                                                                                  - - **Salesperson Filter**: Individual or team performance comparison
                                                                                                                   
                                                                                                                    - ### Visualizations
                                                                                                                    - - 📊 **Line Chart**: Revenue trend over time with target comparison
                                                                                                                      - - 📊 **Bar Chart**: Sales by region and product category
                                                                                                                        - - 📊 **Stacked Bar**: Monthly revenue vs target achievement
                                                                                                                          - - 📊 **Table**: Top and bottom performers with conditional formatting
                                                                                                                            - - 📊 **Card Visuals**: Key metrics (Total Revenue, Units, Target Achievement)
                                                                                                                              - - 📊 **Area Chart**: Units sold trend by category
                                                                                                                                - - 📊 **Gauge Chart**: Overall target achievement percentage
                                                                                                                                 
                                                                                                                                  - ## 📸 Screenshots
                                                                                                                                 
                                                                                                                                  - *Dashboard visualizations showcase:*
                                                                                                                                  - - Executive summary with key performance indicators
                                                                                                                                    - - Revenue trend analysis with monthly targets
                                                                                                                                      - - Regional performance breakdown
                                                                                                                                        - - Product category distribution
                                                                                                                                          - - Salesperson performance rankings
                                                                                                                                            - - Interactive filtering capabilities
                                                                                                                                             
                                                                                                                                              - *(Note: Power BI dashboard file (.pbix) can be opened with Power BI Desktop - free version compatible)*
                                                                                                                                             
                                                                                                                                              - ## 🔧 SQL & Python Analysis
                                                                                                                                             
                                                                                                                                              - ### SQL Highlights
                                                                                                                                              - The `revenue_analysis.sql` file includes queries for:
                                                                                                                                              - - Total revenue calculations (Overall, MTD, YTD)
                                                                                                                                                - - Revenue vs target analysis by salesperson
                                                                                                                                                  - - Month-over-month growth rates
                                                                                                                                                    - - Regional and category breakdowns
                                                                                                                                                      - - Top/bottom performer identification
                                                                                                                                                        - - Average deal size and units sold trends
                                                                                                                                                         
                                                                                                                                                          - ### Python Processing
                                                                                                                                                          - The `data_processing.py` script provides:
                                                                                                                                                          - - `SalesDataProcessor` class for data manipulation
                                                                                                                                                            - - Interactive filtering methods (date, region, category, salesperson)
                                                                                                                                                              - - KPI calculation functions
                                                                                                                                                                - - Revenue breakdown and trend analysis
                                                                                                                                                                  - - Target achievement tracking
                                                                                                                                                                   
                                                                                                                                                                    - ## 🚀 How to Use This Project
                                                                                                                                                                   
                                                                                                                                                                    - 1. **View the Data**: Check `data/raw/sales_data.csv` for the complete dataset
                                                                                                                                                                      2. 2. **Explore SQL Queries**: Review `sql/revenue_analysis.sql` for data extraction logic
                                                                                                                                                                         3. 3. **Run Python Analysis**: Execute `python/data_processing.py` for interactive data exploration
                                                                                                                                                                            4. 4. **Read Dashboard Guide**: See `dashboards/DASHBOARD_GUIDE.md` for detailed visualization descriptions
                                                                                                                                                                              
                                                                                                                                                                               5. ## 📊 Business Recommendations
                                                                                                                                                                              
                                                                                                                                                                               6. Based on the analysis, key recommendations include:
                                                                                                                                                                              
                                                                                                                                                                               7. 1. **Regional Strategy**: Implement West region best practices in South region to boost underperforming territory
                                                                                                                                                                                  2. 2. **Product Diversification**: Increase marketing focus on Accessories category to reduce Electronics dependency
                                                                                                                                                                                     3. 3. **Sales Training**: Provide targeted coaching for bottom 5 performers to improve overall team achievement
                                                                                                                                                                                        4. 4. **Seasonal Planning**: Prepare inventory and staffing for Q4 surge; create summer promotions for mid-year boost
                                                                                                                                                                                           5. 5. **Target Optimization**: Consider 15-20% growth targets for next year based on current 18.5% YoY trajectory
                                                                                                                                                                                             
                                                                                                                                                                                              6. ## 📝 Project Learnings
                                                                                                                                                                                             
                                                                                                                                                                                              7. This project demonstrates:
                                                                                                                                                                                              8. - ✅ End-to-end data analytics workflow
                                                                                                                                                                                                 - - ✅ SQL proficiency for complex business queries
                                                                                                                                                                                                   - - ✅ Python data manipulation and analysis
                                                                                                                                                                                                     - - ✅ Dashboard design and visualization best practices
                                                                                                                                                                                                       - - ✅ Business insight generation from raw data
                                                                                                                                                                                                         - - ✅ Clear documentation and presentation skills
                                                                                                                                                                                                          
                                                                                                                                                                                                           - ---
                                                                                                                                                                                                           
                                                                                                                                                                                                           **Author**: Mohith Rangineni
                                                                                                                                                                                                           **Last Updated**: December 18, 2025
                                                                                                                                                                                                           **Project Type**: Data Analytics Portfolio Project
                                                                                                                                                                                                           **Status**: Complete
                                                                                                                                                                                                           
                                                                                                                                                                                                           *For questions or collaboration opportunities, please open an issue or reach out via GitHub.*
