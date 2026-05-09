SELECT 
    SUM(CASE WHEN month = 'Jan' THEN amount END) AS Jan,
    SUM(CASE WHEN month = 'Feb' THEN amount END) AS Feb,
    SUM(CASE WHEN month = 'Mar' THEN amount END) AS Mar
FROM sales;