SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

SELECT region, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY region;

SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;


select 
date_format("order date","%y,%m") as month,
sum(sales) as total_sales
from superstore
group by month
order by month;

SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT Segment, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment;
