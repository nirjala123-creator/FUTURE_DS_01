--Q1.Find the total sales, total profit, and total quantity sold for the entire business.
SELECT
    SUM("Sales") AS total_sales,
    SUM("Quantity") AS total_quantity,
    SUM("Profit") AS total_profit
FROM customer;

--Q2.Find the total sales and total profit for each category and display the results in descending order of total sales.
select "Category",sum("Sales") as total_sales,sum("Profit") as total_profit
from customer
group by "Category"
order by total_sales desc

--Q3.Find the top 10 products with the highest total sales.
select "Product Name",sum("Sales") as total_sales
from customer
group by "Product Name"
order by total_sales desc
limit 10

--Q4.Find the total sales and total profit for each region and arrange the results in descending order of total sales.
select sum("Sales") as total_Sales,sum("Profit") as total_profit,"Region"
from customer
group by "Region"
order by total_Sales desc

--Q5.Find the total sales and total profit for each sub-category and display the top 5 sub-categories by total profit.
select "Sub-Category",sum("Sales") as total_Sales,sum("Profit") as total_profit
from customer
group by "Sub-Category"
order by total_profit desc
limit 5

--Q6.Find the total sales and total profit for each customer segment and arrange the results in descending order of total sales.
select "Segment",sum("Sales") as total_Sales,sum("Profit") as total_profit
from customer
group by "Segment"
order by total_Sales desc

--Q7.Find the top 10 states with the highest total sales and total profit, ordered by total sales in descending order.
select "State",sum("Sales") as total_Sales,sum("Profit") as total_profit
from customer
group by "State"
order by total_Sales desc
limit 10

--Q8.Find the total sales and total profit for each year and arrange the results in ascending order of year.
select "Year",sum("Sales") as total_Sales,sum("Profit") as total_profit
from customer
group by "Year"
order by "Year"

--Q9.Find the total sales and total profit for each month and arrange the results in descending order of total sales.
select "Month",sum("Sales") as total_Sales,sum("Profit") as total_profit
from customer
group by "Month"
order by total_Sales desc

--Q10.Find the top 5 customers who generated the highest total sales and display their total profit as well.
select "Customer Name",sum("Sales") as total_Sales,sum("Profit") as total_profit
from customer
group by "Customer Name"
order by total_Sales desc
limit 5

--Q11.Find the average discount and total profit for each category and arrange the results by average discount in descending order.
select avg("Discount") as avg_discount, sum("Profit") as total_profit,"Category"
from customer
group by "Category"
order by avg_discount desc

--Q12.Find the top 5 cities with the highest total sales and total profit.
select "City",sum("Sales") as total_Sales,sum("Profit") as total_profit
from customer
group by "City"
order by total_Sales desc
limit 5

--Q13.Find the bottom 5 products with the lowest total profit.
select "Product Name",sum("Profit") as total_profit
from customer
group by "Product Name"
order by total_profit 
limit 5