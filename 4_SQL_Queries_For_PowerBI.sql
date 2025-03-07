--Total Revenue Per Month
SELECT Month_Name, SUM(Total_Amount) AS Total_Revenue
FROM Sales_Data
GROUP BY Month_Name
ORDER BY Total_Revenue DESC;

-- Top Customers by revenue
SELECT TOP 5 Sales_Rep, SUM(Total_Amount) AS Total_Revenue
FROM Sales_Data
GROUP BY Sales_Rep
ORDER BY Total_Revenue DESC;

-- Product Cat. Revenue breakdown
SELECT Category, SUM(Total_Amount) AS Total_Revenue
FROM Sales_Data
GROUP BY Category
ORDER BY Total_Revenue DESC;


-- Sales trends overtime
SELECT Date, SUM(Total_Amount) AS Total_Sales
FROM Sales_Data
GROUP BY Date
ORDER BY Date ASC;



