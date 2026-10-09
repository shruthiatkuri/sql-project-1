
--Question 1

CREATE TABLE reviews(
    user_id INTEGER REFERENCES users(id),
    product_id INTEGER REFERENCES products(id) ,                        
    rating INTEGER NOT NULL CHECK(rating >=1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (user_id, product_id));

--Question 2

ALTER TABLE users 
ADD COLUMN phone_number TEXT;

--Question 3

ALTER TABLE orders
ADD CONSTRAINT max_quantity CHECK (quantity <= 10);

--Question 4

INSERT INTO products(name, category, price,stock)
VALUES ('Studio Desk Lamp', 'Office',45.50, 25)
RETURNING id;


SELECT id,name, category, price, stock
FROM products
WHERE name= 'Studio Desk Lamp';

--Question 5

--Before Update

SELECT id,category,price
FROM products
WHERE category='Furniture'
LIMIT 10;

--UPdate

UPDATE products
SET price= price*1.10
WHERE category= 'Furniture';

--After Update

SELECT id,category,price
FROM products
WHERE category='Furniture'
LIMIT 10;

--Question 6

UPDATE orders
SET status='cancelled'
WHERE status= 'pending' AND created_at < NOw()- INTERVAL '30 days';


SELECT id, status, created_at
FROM orders
WHERE status= 'pending' AND created_at < NoW() -INTERVAL '30 days';

--Question 7

SELECT p.name 
FROM orders AS o
INNER JOIN products AS p ON p.id=o.product_id LIMIT 10;
       
DELETE FROM products
WHERE name= 'Pulse Keyboard 58';
--ERROR:  update or delete on table "products" violates foreign key constraint "orders_product_id_fkey" on table "orders"
--The query causes an error because `orders.product_id` references `products.id`, and product 58 is still referenced by existing orders. 
--PostgreSQL prevents the deletion to preserve referential integrity.

--Question 8

CREATE INDEX idx_orders_status_created_at
ON orders (status, created_at);

--Question 9

BEGIN;

INSERT INTO orders (user_id, product_id, quantity)
VALUES (1,1,2);

UPDATE products
SET stock = stock -2
WHERE id =1 AND stock >=2;

COMMIT;   --If the update result displayed as 1 then run commit 

--ROLLBACK  --if the upate result displayed as 0 then run ROLLBACK
