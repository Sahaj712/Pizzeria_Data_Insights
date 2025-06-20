#Dashboard 1 - Order Activity
/*
Total Orders
Total Sales
Total items
Average order value
Sales by Category
Top selling items
Order by hour
Sales by hour
Order by address
Order by Delivery/Pickup
*/

-- Basic Display of data
SELECT
    o.order_id,
    i.item_price,
    o.quantity,
    i.item_cat,
    i.item_name,
    o.created_at,
    a.delivery_address1,
    a.delivery_address2,
    a.delivery_city,
    a.delivery_zipcode,
    o.delivery
FROM orders o
LEFT JOIN item i ON o.item_id = i.item_id
LEFT JOIN address a ON a.add_id = o.add_id;

-- Total Orders
-- Count of unique orders placed
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Total Sales
-- Sum of (item price × quantity) for all orders
SELECT ROUND(SUM(o.quantity * i.item_price), 2) AS total_sales
FROM orders o
JOIN item i ON o.item_id = i.item_id;

-- Total Items
-- Total number of individual items sold
SELECT SUM(quantity) AS total_items_sold
FROM orders;

-- Average Order Value
-- Total revenue divided by number of unique orders
SELECT 
  ROUND(SUM(o.quantity * i.item_price) / COUNT(DISTINCT o.order_id), 2) AS average_order_value
FROM orders o
JOIN item i ON o.item_id = i.item_id;

-- 5. Sales by Category
-- Grouped sum of revenue by item category (e.g., Pizza, Sides, Desserts)
SELECT 
  i.item_cat, 
  ROUND(SUM(o.quantity * i.item_price), 2) AS category_sales
FROM orders o
JOIN item i ON o.item_id = i.item_id
GROUP BY i.item_cat;

-- Top Selling Items
-- Top 10 items by number of units sold
SELECT 
  i.item_name, 
  SUM(o.quantity) AS total_units_sold
FROM orders o
JOIN item i ON o.item_id = i.item_id
GROUP BY i.item_name
ORDER BY total_units_sold DESC
LIMIT 10;

-- Orders by Hour
-- Number of unique orders grouped by hour of day
SELECT 
  HOUR(created_at) AS order_hour, 
  COUNT(DISTINCT order_id) AS order_count
FROM orders
GROUP BY order_hour
ORDER BY order_hour;

-- Sales by Hour
-- Total sales amount grouped by hour of day
SELECT 
  HOUR(o.created_at) AS hour_of_day, 
  ROUND(SUM(o.quantity * i.item_price), 2) AS hourly_sales
FROM orders o
JOIN item i ON o.item_id = i.item_id
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- Orders by Address (ZIP code)
-- Number of orders per delivery ZIP code
SELECT 
  a.delivery_zipcode, 
  COUNT(o.order_id) AS order_count
FROM orders o
JOIN address a ON o.add_id = a.add_id
GROUP BY a.delivery_zipcode
ORDER BY order_count DESC;

-- Orders by Delivery/Pickup
-- Count of orders grouped by order type
SELECT 
  CASE 
    WHEN delivery = 1 THEN 'Delivery'
    ELSE 'Pickup'
  END AS order_type,
  COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_type;

