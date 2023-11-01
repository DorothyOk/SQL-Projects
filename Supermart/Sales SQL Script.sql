-- Database was created and named 'sales'. All the tables were also imported individually with formats corrected during the process.

-- Queries to pull up all the data on the individual tables, to study relationship between tables.

SELECT * FROM customers;
SELECT * FROM creditcard;
SELECT * FROM orders;
SELECT * FROM payment;
SELECT * FROM product;

-- Change all the datetime columns to date only as there's no time stamp data
ALTER TABLE orders
MODIFY order_date DATE;

ALTER TABLE creditcard
MODIFY card_expiry_date DATE;

ALTER TABLE customers
MODIFY dob DATE;

ALTER TABLE payment
MODIFY payment_date DATE;

-- How many orders have been delivered between September 2022 to February 2023?

SELECT COUNT(order_id) AS num_of_orders_btw_sept2022_to_feb2023
FROM orders
WHERE order_date BETWEEN '2022-09-01' AND '2023-02-01';

-- What is the top 10 products by revenue-- Revenue is Unit Price multiplied by Quantity
--  Unit Price is on the product table and Quantity on the orders table so we'll query both tables

SELECT o.order_id, o.quantity, p.unit_price, (o.quantity * p.unit_price) AS revenue
FROM orders o
JOIN product p
ON o.product_id = p.product_id;

-- Top 10 products by revenue
SELECT DISTINCT rev.product_id, rev.product_name, rev.revenue
FROM
(SELECT o.order_id, o.quantity, p.product_id, p.product_name, p.unit_price, (o.quantity * p.unit_price) AS revenue
FROM orders o
JOIN product p
ON o.product_id = p.product_id) AS Rev
ORDER BY rev.revenue DESC
LIMIT 10;

-- What are the top 5 banks customers use the most?
SELECT bank_name, COUNT(bank_name)
FROM creditcard
GROUP BY bank_name
ORDER BY COUNT(bank_name) DESC;

-- Who are the top 3 customers in terms of spending?

SELECT reve.customer_id, c.customer_name, SUM(reve.revenue) AS total_revenue_by_customer
FROM
(SELECT o.order_id, o.customer_id, o.quantity, p.unit_price, (o.quantity * p.unit_price) AS revenue
FROM orders o
JOIN product p
ON o.product_id = p.product_id) reve
JOIN customers C
ON c.customer_id = reve.customer_id
GROUP BY c.customer_name, reve.customer_id
ORDER BY SUM(reve.revenue) DESC;

-- How many orders have not been paid for?

SELECT COUNT(po.order_id) AS number_of_unpaid_orders
FROM (SELECT o.order_id, p.payment_id
FROM orders o
LEFT JOIN payment p
ON p.order_id = o.order_id) PO
WHERE po.payment_id IS NULL;

-- Which 3 cities do we have the most number of customers?

SELECT city, COUNT(city)
FROM customers
GROUP BY city
ORDER BY COUNT(city) DESC
LIMIT 3;

-- Which city is generating the most revenue?

SELECT c.city, SUM(re.revenue) AS total_revenue_by_city
FROM
(SELECT o.customer_id, o.quantity, p.unit_price, (o.quantity * p.unit_price) AS revenue
FROM orders o
JOIN product p
ON o.product_id = p.product_id) re
JOIN customers C
ON c.customer_id = re.customer_id
GROUP BY c.city 
ORDER BY SUM(re.revenue) DESC
LIMIT 1;