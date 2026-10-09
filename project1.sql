
--Question 1

SELECT email,full_name
FROM users
WHERE role='admin';


--Question 2

SELECT name, price
FROM products
WHERE category= 'Electronics'
AND price < 50
ORDER BY price ASC;


--Question 3

SELECT email, created_at
FROM users
ORDER BY created_at DESC
LIMIT 10;


--Question 4

SELECT name,category,price
FROM products
WHERE name LIKE '%Keyboard%'
ORDER BY name ASC;


--Question 5

SELECT full_name,email
FROM users
WHERE full_name LIKE 'A%';


--Question 6

SELECT name, price
FROM products
WHERE category='Furniture'
ORDER BY price ASC
LIMIT 5;


--Question 7

SELECT name,category,price 
FROM products
WHERE price BETWEEN 100 AND 200
ORDER BY price DESC
LIMIT 10;


--Question 8

SELECT name,price
FROM products
ORDER BY price DESC
LIMIT 5 OFFSET 5;


--Question 9

--Foreign key of the orders table from the users table

--The id field from the users table is used as a foreign key in the orders table.
--id is a primary key in the users table, and we need to have a connection from the users table to the orders table. 
--The id column has a unique ID for each user, so it allows us to check the order made by a specific ID and find the 
--corresponding user data. Having id as a foreign key in the orders table creates that relationship and helps us 
--understand which user made a specific order from the orders table.
