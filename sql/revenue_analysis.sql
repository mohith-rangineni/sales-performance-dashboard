-- =====================================================
-- SALES PERFORMANCE DASHBOARD - REVENUE ANALYSIS
-- Core KPI Queries for Dashboard Metrics
-- =====================================================

-- KPI 1: Total Revenue (Overall, MTD, YTD)
-- =====================================================
SELECT 
    SUM(sales_amount) as total_revenue,
    SUM(CASE WHEN MONTH(date) = MONTH(CURRENT_DATE) 
             AND YEAR(date) = YEAR(CURRENT_DATE) 
        THEN sales_amount ELSE 0 END) as mtd_revenue,
    SUM(CASE WHEN YEAR(date) = YEAR(CURRENT_DATE) 
        THEN sales_amount ELSE 0 END) as ytd_revenue
FROM sales_data;

-- KPI 2: Revenue vs Target
-- =====================================================
SELECT 
    salesperson,
    SUM(sales_amount) as actual_revenue,
    MAX(monthly_target) as target,
    ROUND((SUM(sales_amount) / MAX(monthly_target)) * 100, 2) as achievement_percentage,
    SUM(sales_amount) - MAX(monthly_target) as variance
FROM sales_data
WHERE MONTH(date) = MONTH(CURRENT_DATE)
GROUP BY salesperson
ORDER BY achievement_percentage DESC;

-- KPI 3: Growth vs Previous Period (Month-over-Month)
-- =====================================================
WITH monthly_revenue AS (
      SELECT 
        DATE_FORMAT(date, '%Y-%m') as month,
          SUM(sales_amount) as revenue
      FROM sales_data
      GROUP BY DATE_FORMAT(date, '%Y-%m')
  ),
revenue_with_lag AS (
      SELECT 
        month,
          revenue,
          LAG(revenue) OVER (ORDER BY month) as prev_month_revenue
      FROM monthly_revenue
  )
SELECT 
    month,
    revenue as current_revenue,
    prev_month_revenue,
    ROUND(((revenue - prev_month_revenue) / prev_month_revenue) * 100, 2) as growth_percentage
FROM revenue_with_lag
WHERE prev_month_revenue IS NOT NULL
ORDER BY month DESC;

-- KPI 4: Sales by Region
-- =====================================================
SELECT 
    region,
    SUM(sales_amount) as total_revenue,
    SUM(units_sold) as total_units,
    COUNT(DISTINCT customer_id) as customer_count,
    ROUND(AVG(sales_amount), 2) as avg_transaction_value,
    ROUND((SUM(sales_amount) / (SELECT SUM(sales_amount) FROM sales_data)) * 100, 2) as revenue_percentage
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;

-- KPI 5: Sales by Product/Category
-- =====================================================
SELECT 
    category,
    product,
    SUM(sales_amount) as total_revenue,
    SUM(units_sold) as total_units_sold,
    COUNT(*) as transaction_count,
    ROUND(AVG(sales_amount), 2) as avg_price
FROM sales_data
GROUP BY category, product
ORDER BY total_revenue DESC;

-- KPI 6: Top 5 Salespeople
-- =====================================================
SELECT 
    salesperson,
    SUM(sales_amount) as total_revenue,
    SUM(units_sold) as total_units,
    COUNT(DISTINCT customer_id) as customers_served,
    ROUND(AVG(sales_amount), 2) as avg_deal_size,
    MAX(monthly_target) as target,
    ROUND((SUM(sales_amount) / MAX(monthly_target)) * 100, 2) as target_achievement
FROM sales_data
GROUP BY salesperson
ORDER BY total_revenue DESC
LIMIT 5;

-- KPI 7: Bottom 5 Salespeople
-- =====================================================
SELECT 
    salesperson,
    SUM(sales_amount) as total_revenue,
    SUM(units_sold) as total_units,
    COUNT(DISTINCT customer_id) as customers_served,
    ROUND(AVG(sales_amount), 2) as avg_deal_size,
    MAX(monthly_target) as target,
    ROUND((SUM(sales_amount) / MAX(monthly_target)) * 100, 2) as target_achievement
FROM sales_data
GROUP BY salesperson
ORDER BY total_revenue ASC
LIMIT 5;

-- KPI 8: Units Sold Trend Over Time
-- =====================================================
SELECT 
    DATE_FORMAT(date, '%Y-%m') as month,
    SUM(units_sold) as total_units,
    COUNT(DISTINCT customer_id) as unique_customers,
    ROUND(AVG(units_sold), 2) as avg_units_per_transaction
FROM sales_data
GROUP BY DATE_FORMAT(date, '%Y-%m')
ORDER BY month;

-- KPI 9: Average Deal Size
-- =====================================================
SELECT 
    ROUND(AVG(sales_amount), 2) as overall_avg_deal_size,
    ROUND(MIN(sales_amount), 2) as min_deal_size,
    ROUND(MAX(sales_amount), 2) as max_deal_size,
    ROUND(STDDEV(sales_amount), 2) as deal_size_std_dev
FROM sales_data;

-- Average Deal Size by Region
SELECT 
    region,
    ROUND(AVG(sales_amount), 2) as avg_deal_size,
    COUNT(*) as transaction_count
FROM sales_data
GROUP BY region
ORDER BY avg_deal_size DESC;

-- Average Deal Size by Salesperson
SELECT 
    salesperson,
    ROUND(AVG(sales_amount), 2) as avg_deal_size,
    COUNT(*) as transaction_count
FROM sales_data
GROUP BY salesperson
ORDER BY avg_deal_size DESC;
