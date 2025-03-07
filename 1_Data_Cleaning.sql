-- If quantity purchased is NULL, assume at least 1 item was bought
UPDATE [Progress].[dbo].[Sales_Data]
SET Quantity_Purchased = 1
WHERE Quantity_Purchased IS NULL;

-- If price per unit is NULL, estimate it using cost price and discount
UPDATE [Progress].[dbo].[Sales_Data]
SET Price_per_Unit = Cost_Price + Discount_Applied
WHERE Price_per_Unit IS NULL;

-- If discount applied is NULL, set it to 0
UPDATE [Progress].[dbo].[Sales_Data]
SET Discount_Applied = 0.0
WHERE Discount_Applied IS NULL;
