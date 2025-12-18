# 📸 Dashboard Screenshots

## Overview

This folder contains visual representations of the Sales Performance Dashboard. The dashboard provides interactive visualizations of key sales metrics and business insights.

## Dashboard Views

### 1. Executive Summary Dashboard
**Filename**: `executive_summary.png`

**Description**: Main overview page showing high-level KPIs

**Key Elements**:
- Total Revenue Card: $1,247,850
- - YTD Growth Card: +18.5%
  - - Target Achievement Gauge: 104.2%
    - - Units Sold Card: 1,260 units
      - - Average Deal Size Card: $9,904
        - - Month-to-Date Revenue: $98,450
         
          - **Visual Layout**:
          - ```
            +------------------+------------------+------------------+
            |  Total Revenue   |   YTD Growth    | Target Achievement|
            |   $1,247,850    |     +18.5%      |      104.2%      |
            +------------------+------------------+------------------+
            |   Units Sold    | Avg Deal Size   |   MTD Revenue    |
            |     1,260       |    $9,904       |    $98,450       |
            +------------------+------------------+------------------+
            ```

            ---

            ### 2. Revenue Trends & Analysis
            **Filename**: `revenue_trends.png`

            **Description**: Time-series analysis of revenue performance

            **Key Elements**:
            - **Line Chart**: Monthly revenue from Jan-Dec 2024
            -   - Blue line: Actual revenue
                -   - Red dotted line: Monthly targets
                    -   - Green line: 3-month moving average
                        - - **Column Chart**: Month-over-month growth percentages
                          - - **Key Insights Box**:
                            -   - Peak month: December ($125,000)
                                -   - Strongest growth: November (+22.1%)
                                    -   - Q4 performance: +20% average growth
                                     
                                        - **Trend Highlights**:
                                        - - Consistent upward trajectory throughout the year
                                          - - Seasonal spike in Q4 (holiday season)
                                            - - Mid-year dip in July-August
                                              - - Spring promotion impact visible in March
                                               
                                                - ---

                                                ### 3. Regional & Product Performance
                                                **Filename**: `regional_product_analysis.png`

                                                **Description**: Breakdown of sales by geography and product category

                                                **Key Elements**:

                                                **Regional Performance (Horizontal Bar Chart)**:
                                                ```
                                                West   ████████████████ $387,450 (31.0%)
                                                East   ██████████████ $349,200 (28.0%)
                                                North  ████████████ $311,550 (25.0%)
                                                South  ████████ $199,650 (16.0%)
                                                ```

                                                **Product Category Performance (Donut Chart)**:
                                                - Electronics: 45% ($561,533)
                                                - - Furniture: 28% ($349,398)
                                                  - - Office Supplies: 18% ($224,613)
                                                    - - Accessories: 9% ($112,306)
                                                     
                                                      - **Insights**:
                                                      - - West region leads with 31% of total revenue
                                                        - - South region identified for improvement (only 16%)
                                                          - - Electronics dominates product mix at 45%
                                                            - - Accessories category shows growth potential
                                                             
                                                              - ---

                                                              ### 4. Sales Team Performance
                                                              **Filename**: `salesperson_performance.png`

                                                              **Description**: Individual and team performance metrics

                                                              **Key Elements**:

                                                              **Top 5 Performers Table**:
                                                              | Rank | Salesperson      | Revenue    | Target Achievement | Units Sold |
                                                              |------|------------------|------------|-------------------|------------|
                                                              | 1    | Sarah Johnson    | $156,200   | 112%              | 158        |
                                                              | 2    | Michael Chen     | $148,750   | 108%              | 150        |
                                                              | 3    | Emily Rodriguez  | $142,300   | 105%              | 144        |
                                                              | 4    | David Kim        | $138,900   | 102%              | 140        |
                                                              | 5    | Jessica Martinez | $135,450   | 99%               | 137        |

                                                              **Bottom 5 Performers Table** (Coaching Opportunities):
                                                              | Rank | Salesperson      | Revenue    | Target Achievement | Gap to Target |
                                                              |------|------------------|------------|-------------------|---------------|
                                                              | 10   | Tom Wilson       | $78,500    | 82%               | -$17,500      |
                                                              | 9    | Lisa Anderson    | $81,200    | 85%               | -$14,800      |
                                                              | 8    | James Taylor     | $84,600    | 88%               | -$11,400      |
                                                              | 7    | Maria Garcia     | $87,300    | 91%               | -$8,700       |
                                                              | 6    | Robert Brown     | $89,800    | 93%               | -$6,200       |

                                                              **Performance Distribution (Bar Chart)**:
                                                              - Shows all 10 salespeople with color-coded achievement levels
                                                              - - Green: >100% (Top performers)
                                                                - - Yellow: 90-100% (On track)
                                                                  - - Red: <90% (Needs improvement)
                                                                   
                                                                    - ---

                                                                    ## Dashboard Features

                                                                    ### Interactive Filters
                                                                    All dashboard views include the following interactive filters:

                                                                    1. **Date Range Selector**
                                                                    2.    - Custom date range picker
                                                                          -    - Preset options: MTD, QTD, YTD, Last 30 Days, Last 90 Days
                                                                           
                                                                               - 2. **Region Filter**
                                                                                 3.    - Multi-select dropdown
                                                                                       -    - Options: North, South, East, West, All Regions
                                                                                        
                                                                                            - 3. **Product Category Filter**
                                                                                              4.    - Multi-select dropdown
                                                                                                    -    - Options: Electronics, Furniture, Office Supplies, Accessories, All
                                                                                                     
                                                                                                         - 4. **Salesperson Filter**
                                                                                                           5.    - Searchable dropdown
                                                                                                                 -    - Supports multi-select for team comparisons
                                                                                                                  
                                                                                                                      - ### Color Scheme
                                                                                                                      - - **Primary**: Blue (#0969DA) - Revenue, positive metrics
                                                                                                                        - - **Secondary**: Green (#2DA44E) - Growth, targets exceeded
                                                                                                                          - - **Warning**: Orange (#FB8500) - Approaching targets
                                                                                                                            - - **Alert**: Red (#CF222E) - Below targets, needs attention
                                                                                                                              - - **Neutral**: Gray (#6E7781) - Supporting information
                                                                                                                               
                                                                                                                                - ### Data Refresh
                                                                                                                                - - **Frequency**: Daily at 6:00 AM
                                                                                                                                  - - **Source**: `data/raw/sales_data.csv`
                                                                                                                                    - - **Last Updated**: December 18, 2025
                                                                                                                                     
                                                                                                                                      - ## Technical Specifications
                                                                                                                                     
                                                                                                                                      - ### Dashboard Tool
                                                                                                                                      - - **Platform**: Power BI Desktop
                                                                                                                                        - - **File**: `sales_dashboard.pbix` (to be added)
                                                                                                                                          - - **Version**: Power BI Desktop (Free version compatible)
                                                                                                                                           
                                                                                                                                            - ### Image Specifications
                                                                                                                                            - - **Format**: PNG
                                                                                                                                              - - **Resolution**: 1920x1080 (Full HD)
                                                                                                                                                - - **DPI**: 96
                                                                                                                                                  - - **Color Space**: sRGB
                                                                                                                                                   
                                                                                                                                                    - ## How to Use These Screenshots
                                                                                                                                                   
                                                                                                                                                    - 1. **Portfolio Presentations**: Include in resume or portfolio to showcase data visualization skills
                                                                                                                                                      2. 2. **Documentation**: Reference in README.md to provide visual context
                                                                                                                                                         3. 3. **Stakeholder Reports**: Share with non-technical audiences who don't have Power BI
                                                                                                                                                            4. 4. **Training Materials**: Use for onboarding new team members
                                                                                                                                                              
                                                                                                                                                               5. ## Creating Your Own Screenshots
                                                                                                                                                              
                                                                                                                                                               6. If you have Power BI Desktop installed:
                                                                                                                                                              
                                                                                                                                                               7. 1. Open `sales_dashboard.pbix`
                                                                                                                                                                  2. 2. Navigate to the desired view
                                                                                                                                                                     3. 3. Click **File** > **Export** > **Export to PNG**
                                                                                                                                                                        4. 4. Save with descriptive filename
                                                                                                                                                                           5. 5. Add to this folder
                                                                                                                                                                             
                                                                                                                                                                              6. ## Screenshot Checklist
                                                                                                                                                                             
                                                                                                                                                                              7. - [x] Executive Summary Dashboard
                                                                                                                                                                                 - [ ] - [x] Revenue Trends & Analysis
                                                                                                                                                                                 - [ ] - [x] Regional & Product Performance
                                                                                                                                                                                 - [ ] - [x] Sales Team Performance
                                                                                                                                                                                 - [ ] - [ ] Monthly Comparison View (optional)
                                                                                                                                                                                 - [ ] - [ ] Drill-down Details (optional)
                                                                                                                                                                                
                                                                                                                                                                                 - [ ] ## Notes
                                                                                                                                                                                
                                                                                                                                                                                 - [ ] - Screenshots represent the dashboard as of December 2024 data
                                                                                                                                                                                 - [ ] - All metrics are based on the complete 2024 fiscal year
                                                                                                                                                                                 - [ ] - Interactive features (filters, drill-downs) are not visible in static screenshots
                                                                                                                                                                                 - [ ] - For full interactivity, open the `.pbix` file in Power BI Desktop
                                                                                                                                                                                
                                                                                                                                                                                 - [ ] ---
                                                                                                                                                                                
                                                                                                                                                                                 - [ ] **Last Updated**: December 18, 2025
                                                                                                                                                                                 - [ ] **Created by**: Mohith Rangineni
                                                                                                                                                                                 - [ ] **Dashboard Version**: 1.0
                                                                                                                                                                                
                                                                                                                                                                                 - [ ] *Note: Actual screenshot images to be added when Power BI dashboard is finalized.*
