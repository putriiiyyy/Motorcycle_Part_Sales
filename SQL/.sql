-- Select the columns we want to analyze
SELECT 
    product_line,                                -- product category
    TRIM(TO_CHAR(date, 'Month')) AS month,       -- extract month name from the date, trim removes extra spaces
    warehouse,                                   -- warehouse where the order was processed
    SUM(total) - SUM(payment_fee) AS net_revenue -- calculate net revenue = sales total - payment fees

-- Source table
FROM sales

-- Only include wholesale transactions
WHERE client_type = 'Wholesale'

-- Group the results by product line, warehouse, and month
GROUP BY product_line, warehouse, month

-- Order results by product line first, then by month (descending),
-- and finally by net revenue (descending)
ORDER BY product_line, month DESC, net_revenue DESC;
