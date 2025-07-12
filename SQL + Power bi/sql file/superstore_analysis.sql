SELECT * FROM `sample - superstore (1)`;

# total profit, sales, orders
SELECT SUM(sales) AS total_sales
FROM `sample - superstore (1)`;

SELECT SUM(profit) AS total_profit
FROM `sample - superstore (1)`;

SELECT COUNT(quantity) AS total_items
FROM `sample - superstore (1)`;

SELECT COUNT(`Order Id`) AS total_orders
FROM `sample - superstore (1)`;
#################################################

# Sales by category, segment

SELECT Category, SUM(Sales) AS Total_Sales
FROM `sample - superstore (1)`
GROUP BY Category;

SELECT Segment, SUM(Sales) AS Total_Sales
FROM `sample - superstore (1)`
GROUP BY Segment;

###############################################

#Top products by revenue or profit

SELECT `product Name` , Category , SUM(sales) AS Top_products
FROM `sample - superstore (1)`
GROUP BY `Product Name`, Category
ORDER BY top_products  DESC
LIMIT 10;

#################################################


# monthly yearly sales
SELECT `Order Date` FROM `sample - superstore (1)`;

## the dates are stored in text so first converted to date format

SELECT DATE_FORMAT(str_to_date(`Order Date` , '%d-%m-%Y') , '%Y-%M' )  AS Month, SUM(Sales)
FROM `Sample - superstore (1)`
GROUP BY Month
ORDER BY Month;
 
######################################################
 
#profit margin

SELECT `Product Name`, SUM(Profit)/SUM(Sales) AS Profit_Margin
FROM `Sample - superstore (1)`
GROUP BY `Product Name`;