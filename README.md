# Motorcycle Part Sales
This is my SQL + Tableau project on motorcycle parts sales data. I built it from scratch to practice end-to-end data handling, cleaning, SQL business analysis, and Tableau interactive dashboard.  The focus of this project is on wholesale orders, where I calculate net revenue and analyze results by product line, warehouse, and month. 

# 📌 Project Overview
The company operates three warehouses, selling motorcycle parts through both retail and wholesale channels. Customers can pay with credit card, cash, or bank transfer, with each method incurring different transaction fees. The board of directors requested insights into wholesale performance, focusing on net revenue (sales total minus payment fees). This project answers:
1. How wholesale net revenue varies by product line
2. Month-to-month revenue trends
3. Performance differences across warehouses

# 🛠 Tools Used
- SQL → for querying, grouping, and calculating net revenue
- Tableau Public → for interactive dashboards and visualization

# 📚 Credits & Acknowledgements
- This project was inspired by and uses a dataset provided in a DataCamp project.
- Dataset & project context: © DataCamp
- All SQL queries, analysis, and additional work in this repository were created by me.
- You can learn more about the original project on DataCamp https://www.datacamp.com/datalab/w/05d9eaa7-1db8-4414-872f-29db4ae7b959/edit

# 🔍 Analysis Focus
- Revenue trends: Analyzing net revenue across product lines and warehouses
- Client segmentation: Focusing on wholesale clients for deeper insights
- Time-based patterns: Understanding sales performance by month

# 🖥️ Sample SQL Query
SELECT 
    product_line,
    TRIM(TO_CHAR(date, 'Month')) AS month,
    warehouse,
    SUM(total) - SUM(payment_fee) AS net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY product_line, warehouse, month
ORDER BY product_line, month DESC, net_revenue DESC;

- Explanation:

TRIM(TO_CHAR(date, 'Month')): Extracts and cleans the month name

SUM(total) - SUM(payment_fee): Calculates net revenue

WHERE client_type = 'Wholesale': Filters only wholesale transactions

GROUP BY: Groups by product line, warehouse, and month

ORDER BY: Sorts results for better readability
