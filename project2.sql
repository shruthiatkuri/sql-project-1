'1. Write a query that joins orders to users and products to return, for every order: the order's id, the user's email, the product's name, and the order's quantity'.

SELECT o.id,u.email, p.name,o.quantity
FROM users AS u
INNER JOIN orders AS o ON o.user_id=u.id
INNER JOIN products AS p ON p.id= o.product_id;


'2. Extend question 1: also select the date the order was placed (just the day, not the full timestamp — orders.created_at is a TIMESTAMPTZ), and sort the whole result by that day, earliest first.'

postgres=# SELECT o.id,u.email, p.name,o.quantity,DATE(o.created_at)
FROM users AS u
INNER JOIN orders AS o ON o.user_id=u.id
INNER JOIN products AS p ON p.id= o.product_id
ORDER BY DATE(o.createad_at) ASC; 


'3.Write a query that returns the email of every user who has never placed a single order.'

postgres=# SELECT u.email
FROM users AS u
LEFT JOIN orders AS o ON u.id=o.user_id
WHERE o.id IS NULL;


'4.Write a query that returns each distinct status value and how many orders currently have that status, most common status first.'

postgres=# SELECT status, COUNT(*) AS order_status_count 
FROM orders
GROUP By status      
ORDER BY order_status_count DESC;


'5. Write a query that returns each product category and the total revenue it has generated — that is, the sum of price * quantity across every order for products in that category — sorted from highest revenue to lowest.'

postgres=# SELECT p.category, SUM(p.price * o.quantity) AS total_revenue
FROM orders AS o
LEFT JOIN products AS p ON p.id=o.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;


'6. Write a query that returns the email of the 5 users who have ordered the most items in total (sum of quantity across all their orders, regardless of status), along with that total, highest first.'

postgres=# SELECT u.email, SUM(o.quantity) AS total_orders
FROM users AS u
LEFT JOIN orders AS o ON o.user_id= u.id
GROUP BY u.email
ORDER BY total_orders DESC
postgres-# LIMIT 5;


'7. Write a query that returns every product category whose average price is higher than the average price across the entire catalog.'

postgres=# SELECT category,AVG(price)
FROM products                                                             
GROUP BY category                                                        
HAVING AVG(price) > (SELECT AVG(price) FROM products);


'8. Write a query that returns the email of every user who has placed more than 40 orders (any status), along with their order count, most orders first.'

postgres=# SELECT u.email, COUNT(o.user_id) AS order_user_id
FROM orders AS o
INNER JOIN users AS u ON u.id=o.user_id
GROUP BY u.email
HAVING COUNT(o.user_id) > 40
ORDER BY COUNT(o.user_id) DESC;


'9. Write a query that returns the name of every product that has never appeared in a single order — not even a cancelled one. '

postgres=# SELECT p.name
FROM products AS p
LEFT JOIN orders AS o ON o.product_id=p.id
WHERE o.id IS NULL;