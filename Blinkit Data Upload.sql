# Creating the database
CREATE DATABASE blinkit_db;
USE blinkitdb;

# Creating the table with columns
CREATE TABLE blinkit_data
(
Item_Fat_Content VARCHAR(255),
Item_Identifier VARCHAR(255),
Item_Type VARCHAR(255),
Outlet_Establishment_Year INT,
Outlet_Identifier VARCHAR(255),
Outlet_Location_Type VARCHAR(255), Outlet_Size VARCHAR(255),
Outlet_Type VARCHAR(255),
Item_Visibility FLOAT, 
Item_Weight FLOAT,
Sales FLOAT,
Rating FLOAT
);


# To load the data from excel to MySQL
LOAD DATA INFILE 'BlinkIT Grocery Data.csv' INTO TABLE blinkit_data
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

# To see the table
SELECT * FROM blinkit_data;









