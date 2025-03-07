-- Adding Total Amount (Revenue)
ALTER TABLE Sales_Data 
ADD Total_Amount NUMERIC(10,2);

UPDATE Sales_Data 
SET Total_Amount = Quantity_Purchased * Price_per_Unit;

-- Adding Profit Margin
ALTER TABLE Sales_Data 
ADD Profit_Margin NUMERIC(5,2);

UPDATE Sales_Data 
SET Profit_Margin = ((Price_per_Unit - Cost_Price) / Price_per_Unit) * 100;

-- Adding Total Cost
ALTER TABLE Sales_Data 
ADD Total_Cost NUMERIC(10,2);

UPDATE Sales_Data 
SET Total_Cost = Quantity_Purchased * Cost_Price;

-- Adding Discount Percentage
ALTER TABLE Sales_Data 
ADD Discount_Percentage NUMERIC(5,2);

UPDATE Sales_Data 
SET Discount_Percentage = (Discount_Applied / Price_per_Unit) * 100;

-- Adding Day of the Week
ALTER TABLE Sales_Data 
ADD Day_of_Week NVARCHAR(15);

UPDATE Sales_Data 
SET Day_of_Week = DATENAME(WEEKDAY, Date);

-- Adding Month Name
ALTER TABLE Sales_Data 
ADD Month_Name NVARCHAR(15);

UPDATE Sales_Data 
SET Month_Name = DATENAME(MONTH, Date);

-- Adding Customer Segment
ALTER TABLE Sales_Data 
ADD Customer_Segment NVARCHAR(15);

UPDATE Sales_Data 
SET Customer_Segment = 
    CASE 
        WHEN Customer_Age_Group = 'Young' THEN 'Millennials'
        WHEN Customer_Age_Group = 'Adult' THEN 'Gen X'
        WHEN Customer_Age_Group = 'Senior' THEN 'Boomers'
        ELSE 'Unknown'
    END;

	-- Finding the best-selling products
SELECT Product_Name, SUM(Quantity_Purchased) AS Total_Sold
FROM Sales_Data
GROUP BY Product_Name
ORDER BY Total_Sold DESC;
