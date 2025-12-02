# Data Cleaning
UPDATE blinkit_data
SET Item_Fat_Content =
CASE
WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
WHEN Item_Fat_Content = 'reg' THEN 'Regular'
ELSE Item_Fat_Content
END;

# To Check Data Cleaned or Not
SELECT DISTINCT Item_Fat_Content FROM blinkit_data;

# Total Sales
SELECT CAST(SUM(Sales) / 1000000.0 AS DECIMAL(10,2)) AS Total_Sales_Million
FROM blinkit_data;

# Average Sales
SELECT CAST(AVG(Total_Sales) AS DECIMAL(10,0) ) AS Avg_Sales
FROM blinkit_data;

# Number of Items
SELECT count(*) AS No_of_Orders FROM blinkit_data;

#Average Rating
SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM blinkit_data;

# Total Sales By Fat Content
SELECT Item_Fat_Content, CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Fat_Content ORDER BY Total_Sales desc;

# Total Sales By Item Type
SELECT Item_Type, CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

# Fat Content by Outlet for Total Sales
SELECT Outlet_Location_Type,
ROUND(SUM(CASE WHEN Item_Fat_Content = 'Regular' THEN Sales ELSE 0 END), 2) AS Regular,
ROUND(SUM(CASE WHEN Item_Fat_Content = 'Low Fat' THEN Sales ELSE 0 END), 2) AS Low_Fat
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;

# Total Sales by Outlet Establishment Year
SELECT Outlet_Establishment_Year, CAST(SUM(Sales) AS DECIMAL(10,2))
AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC;

# Percentage of Sales by Outlet Size
SELECT
Outlet_Size,
CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

# Sales by Outlet Location
SELECT Outlet_Location_Type, CAST(SUM(Sales) AS DECIMAL(10,2))
AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

# All Metrics by Outlet Type
SELECT Outlet_Type,
CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
COUNT(*) AS No_Of_Items,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating,
CAST(AVG(Item_Visibility) AS DECIMAL(10,2)) AS Item_Visibility
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;













