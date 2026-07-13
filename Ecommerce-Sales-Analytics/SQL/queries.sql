--- Query 1: Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore;

-- Query 2: Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore;

-- Query 3: Total Unique Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM cleaned_superstore;

-- Query 4: Top 10 Customers by Sales
SELECT Customer_Name,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 5: Sales by Category
SELECT Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY Category;

-- Query 6: Profit by Category
SELECT Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore
GROUP BY Category;

-- Query 7: Sales by Region
SELECT Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY Region;

-- Query 8: Profit by Region
SELECT Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore
GROUP BY Region;

-- Query 9: Top 10 Products by Sales
SELECT `Product Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 10: Average Sales
SELECT ROUND(AVG(Sales),2) AS Average_Sales
FROM cleaned_superstore;

-- Query 11: Sales by State
SELECT State,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY State
ORDER BY Total_Sales DESC;

-- Query 12: Profit by State
SELECT State,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore
GROUP BY State
ORDER BY Total_Profit DESC;

-- Query 13: Sales by Segment
SELECT Segment,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY Segment;

-- Query 14: Average Discount by Category
SELECT Category,
ROUND(AVG(Discount),2) AS Avg_Discount
FROM cleaned_superstore
GROUP BY Category;

-- Query 15: Quantity Sold by Category
SELECT Category,
SUM(Quantity) AS Total_Quantity
FROM cleaned_superstore
GROUP BY Category;

-- Query 16: Top 5 Profitable Products
SELECT `Product Name`,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 5;

-- Query 17: Top 5 Loss-Making Products
SELECT `Product Name`,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 5;

-- Query 18: Monthly Sales
SELECT MONTH(`Order Date`) AS Month_Number,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY MONTH(`Order Date`)
ORDER BY Month_Number;

-- Query 19: Yearly Sales
SELECT YEAR(`Order Date`) AS Year,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY YEAR(`Order Date`)
ORDER BY Year;

-- Query 20: Average Profit by Category
SELECT Category,
ROUND(AVG(Profit),2) AS Avg_Profit
FROM cleaned_superstore
GROUP BY Category;

-- Query 21: Number of Orders by Ship Mode
SELECT `Ship Mode`,
COUNT(*) AS Total_Orders
FROM cleaned_superstore
GROUP BY `Ship Mode`;

-- Query 22: Top 10 Cities by Sales
SELECT City,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 23: Sales by Sub-Category
SELECT `Sub-Category`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- Query 24: Profit by Sub-Category
SELECT `Sub-Category`,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;

-- Query 25: Products with Discount Greater Than 20%
SELECT `Product Name`,
Discount
FROM cleaned_superstore
WHERE Discount > 0.20
ORDER BY Discount DESC;

-- Query 26: Customers Who Placed More Than 10 Orders
SELECT `Customer Name`,
COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM cleaned_superstore
GROUP BY `Customer Name`
HAVING COUNT(DISTINCT `Order ID`) > 10
ORDER BY Total_Orders DESC;

-- Query 27: Average Sales Per Order
SELECT ROUND(AVG(Sales),2) AS Average_Sales_Per_Order
FROM cleaned_superstore;

-- Query 28: Region with Highest Profit
SELECT Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_superstore
GROUP BY Region
ORDER BY Total_Profit DESC
LIMIT 1;

-- Query 29: Highest Sales Order
SELECT `Order ID`,
ROUND(SUM(Sales),2) AS Order_Sales
FROM cleaned_superstore
GROUP BY `Order ID`
ORDER BY Order_Sales DESC
LIMIT 1;

-- Query 30: Profit Margin Percentage
SELECT
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM cleaned_superstore;
