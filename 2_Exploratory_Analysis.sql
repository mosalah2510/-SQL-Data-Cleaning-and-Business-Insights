-- Checking total rows vs. unique rows
SELECT COUNT(*) AS TotalRows, 
       COUNT(DISTINCT Country, Product_ID, Product_Name, Category, 
                      Price_per_Unit, Quantity_Purchased, Cost_Price, 
                      Discount_Applied, Payment_Method, Customer_Age_Group, 
                      Customer_Gender, Store_Location, Sales_Rep) AS UniqueRows
FROM [Progress].[dbo].[Sales_Data];



-- Checking for extreme values in quantity
SELECT Product_Name, Quantity_Purchased
FROM [Progress].[dbo].[Sales_Data]
ORDER BY Quantity_Purchased DESC;
