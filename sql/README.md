# SQL Scripts Overview

This directory contains SQL scripts used to create and query the `orders_app` database. Each script is designed to perform specific tasks related to managing and analyzing orders, customers, products, and sales data.

## Scripts and Their Purpose

- **0 - create_db.sql**  
  Creates the `orders_app` database along with the necessary tables (`customers`, `products`, `orders`, `order_items`). It also inserts sample data into these tables to facilitate testing and querying.

- **1 - top_customers_by_pending.sql**  
  Retrieves the top customers who have spent the most, by calculating the total amount spent on their orders.

- **2 - monthly_sales_report.sql**  
  Generates a monthly sales report per product, showing the quantity sold and total sales amount for each month and year. Only includes orders with status "Shipped" or "Delivered".

- **3 - products_never_ordered.sql**  
  Lists products that have never been ordered, helping identify items with no sales activity.

- **4 - average_order_value_by_country.sql**  
  Calculates the average order value grouped by customers' countries, providing insights into regional sales performance.

- **5 - frequent_buyers.sql**  
  Identifies customers who have placed more than one order, highlighting frequent buyers.

## Features of the Query Results

- Detailed customer spending and order frequency analysis.
- Monthly sales trends by product.
- Identification of products with no sales.
- Regional sales performance insights.

## Screenshots

For each SQL script, there is a corresponding screenshot in the `screenshots` directory that shows the query results visually. The screenshots are named to match their respective SQL scripts for easy reference.
