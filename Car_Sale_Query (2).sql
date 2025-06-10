
-- 1. a Sample of Your Data
SELECT TOP 10 * FROM carsalesdata;
-- Helps in understanding the dataset structure and available fields.

--2. Filter Car Sales by Price Range
SELECT * FROM carsalesdata
WHERE Price BETWEEN 25000 AND 50000;
-- Useful for analyzing mid-range vehicle pricing and demand.

-- 3..Group and Aggregate Sales by Model
-- Counts total sales and calculates the average price per model.
SELECT Model, COUNT(*) AS Total_Sales, AVG(Price) AS Avg_Price
FROM carsalesdata
GROUP BY Model
ORDER BY Total_Sales DESC;
/* Diamante is the top-seller with 418 units, followed by Silhouette and Prizm (411 each), 
while Passat lags at 391. Silhouette commands the highest price ($29,858), yet still sells well,
suggesting strong brand appeal. Passat is the cheapest but least sold, possibly due to low demand or 
limited availability.*/

-- 4. predict sales growth over time:
-- Helps in predicting business growth and demand shifts.
SELECT YEAR(Date) AS Sales_Year, COUNT(*) AS Total_Sales
FROM carsalesdata
GROUP BY YEAR(Date)
ORDER BY Sales_Year ASC;
 --5. Compare Monthly Performance for 2023
SELECT MONTH(Date) AS Sales_Month, COUNT(*) AS Total_Sales
FROM carsalesdata
WHERE YEAR(Date) = 2023
GROUP BY MONTH(Date)
ORDER BY Sales_Month ASC;
--6. Compare Monthly Performance for 2022
SELECT MONTH(Date) AS Sales_Month, COUNT(*) AS Total_Sales
FROM carsalesdata
WHERE YEAR(Date) = 2022
GROUP BY MONTH(Date)
ORDER BY Sales_Month ASC;

--7. Identify Seasonal Trends to see which months contribute the most to overall sales:
SELECT MONTH(Date) AS Sales_Month, COUNT(*) AS Total_Sales
FROM carsalesdata
GROUP BY MONTH(Date)
ORDER BY Total_Sales DESC;
/* Sales show strong holiday-driven peaks in November (3,470) and December (3,546), followed by post-holiday slowdowns in January (790) 
and February (735). Additionally, a consistent decline from Month 0 (~12 units) to Month 10 (~1 unit) suggests possible market
 saturation or seasonal demand shifts. Strategic pricing and marketing adjustments could help balance these fluctuations*/

 --8. Categorizing Customers by Income Level
SELECT Customer_Name, Annual_Income, 
CASE 
    WHEN Annual_Income < 40000 THEN 'Budget Buyer'
    WHEN Annual_Income BETWEEN 40000 AND 80000 THEN 'Mid-Level Buyer'
    ELSE 'Luxury Buyer'
END AS Customer_Segment
FROM carsalesdata;
-- Helps in targeting different customer groups based on spending capacity.
-- 9. ompare Average Spending Across Segments from categorized buyers,
-- analyze how much each group spends on average:

SELECT Customer_Segment, AVG(Price) AS Avg_Spending
FROM (
    SELECT Customer_Name, Price,
        CASE 
            WHEN Price < 20000 THEN 'Budget Buyer'
            WHEN Price BETWEEN 20000 AND 50000 THEN 'Mid-Level Buyer'
            ELSE 'Luxury Buyer'
        END AS Customer_Segment
    FROM carsalesdata
) AS Segmented_Customers
GROUP BY Customer_Segment
ORDER BY Avg_Spending DESC;
-- 
SELECT Customer_Segment, Model, COUNT(*) AS Total_Purchases
FROM (
    SELECT Customer_Name, Model, Price,
        CASE 
            WHEN Price < 20000 THEN 'Budget Buyer'
            WHEN Price BETWEEN 20000 AND 50000 THEN 'Mid-Level Buyer'
            ELSE 'Luxury Buyer'
        END AS Customer_Segment
    FROM carsalesdata
) AS Segmented_Customers
GROUP BY Customer_Segment, Model
ORDER BY Customer_Segment, Total_Purchases DESC;
-- Determines purchasing power within different buyer segments.

-- 10. Most Popular Car Colors
--Pale White is the most sold car color, followed by Black, with Red being the least preferred among customers.
SELECT Color, COUNT(*) AS Total_Sales
FROM carsalesdata
GROUP BY Color
ORDER BY Total_Sales DESC;
-- 11. Identify Top Dealers by Sales
SELECT Dealer_Name, Dealer_Region, COUNT(*) AS Total_Sales
FROM carsalesdata
GROUP BY Dealer_Name, Dealer_Region
ORDER BY Total_Sales DESC;
-- 12.  Best-Selling Car Models by Revenue
SELECT Model, SUM(Price) AS Total_Revenue
FROM carsalesdata
GROUP BY Model
ORDER BY Total_Revenue DESC;
--  13. Sales & Revenue Breakdown by Gender
SELECT Gender, COUNT(*) AS Total_Sales, SUM(Price) AS Total_Revenue
FROM carsalesdata
GROUP BY Gender
ORDER BY Total_Revenue DESC;
-- 14.  Average Spending by Gender
SELECT Gender, AVG(Price) AS Avg_Spending
FROM carsalesdata
GROUP BY Gender
ORDER BY Avg_Spending DESC;
-- 15. Gender-Based Sales Over Time
SELECT YEAR(Date) AS Sales_Year, Gender, COUNT(*) AS Sales_Count
FROM carsalesdata
GROUP BY YEAR(Date), Gender
ORDER BY Sales_Year ASC, Sales_Count DESC;
 
-- Provides insights into sales fluctuations and daily trends.
-- 16. Moving Average of Daily Sales  
-- Computes a rolling average of sales over 3 previous days.  
SELECT Date,  
       AVG(Total_Sales) OVER (ORDER BY Date ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS Moving_Avg_Sales  
FROM (SELECT Date, COUNT(*) AS Total_Sales FROM carsalesdata GROUP BY Date) AS SalesData;  

-- Provides insights into sales fluctuations and daily trends.
--17. First-Time vs. Returning Customers 
-- Identify First-Time vs. Returning Customers
-- Identify First-Time vs. Returning Customers
-- Categorizing Customers Based on Purchase Frequency
SELECT Customer_Type, COUNT(*) AS Total_Customers
FROM (
    SELECT Customer_Name, 
           COUNT(*) AS Purchase_Count,
           CASE 
               WHEN COUNT(*) = 1 THEN 'First-Time Buyer'
               ELSE 'Returning Buyer'
           END AS Customer_Type
    FROM carsalesdata
    GROUP BY Customer_Name
) AS CustomerPurchases
GROUP BY Customer_Type
ORDER BY Total_Customers DESC;




