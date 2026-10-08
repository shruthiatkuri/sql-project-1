
'Question 1'

postgres=# SELECT email,full_name
postgres-# FROM users
postgres-# WHERE role='admin';

        email        |     full_name     
---------------------+-------------------
 user16@example.com  | Margaret Dijkstra
 user50@example.com  | Tim Hopper
 user77@example.com  | Linus Hopper
 user84@example.com  | Barbara McCarthy
 user99@example.com  | Brian Stroustrup
 user104@example.com | Brian Dijkstra
 user193@example.com | James McCarthy
 user248@example.com | Linus Rossum
 user313@example.com | Ken McCarthy
 user417@example.com | Guido Thompson
 user426@example.com | Margaret McCarthy
 user436@example.com | James Stroustrup
 user448@example.com | Alan Stroustrup
 user543@example.com | Donald Hamilton
 user706@example.com | James Ritchie
 user724@example.com | Edsger Hopper
 user727@example.com | Tim Gosling
 user766@example.com | Edsger Kernighan
 user802@example.com | Barbara Turing
 user877@example.com | Alan Gosling
 user905@example.com | Linus Ritchie
 user963@example.com | John Hamilton
 user966@example.com | John McCarthy
 user980@example.com | Barbara McCarthy
(24 rows)

'Question 2'

postgres=# SELECT name, price
postgres-# FROM products
postgres-# WHERE category= 'Electronics'
postgres-#   AND price < 50
postgres-# ORDER BY price ASC;


         name         | price 
----------------------+-------
 Aero Keyboard 105    | 11.65
 Quartz Headset 14    | 37.21
 Quartz Desk Lamp 198 | 40.87
(3 rows)

'Question 3'

postgres=# SELECT email, created_at
postgres-# FROM users
postgres-# ORDER BY created_at DESC
postgres-# LIMIT 10;

        email        |          created_at           
---------------------+-------------------------------
 user424@example.com | 2026-10-05 18:34:54.447916+00
 user756@example.com | 2026-10-05 07:06:46.401366+00
 user646@example.com | 2026-10-05 01:56:24.085127+00
 user558@example.com | 2026-10-04 23:51:48.116856+00
 user437@example.com | 2026-10-04 13:55:37.447853+00
 user63@example.com  | 2026-10-03 03:35:15.353324+00
 user401@example.com | 2026-10-03 02:37:02.781328+00
 user513@example.com | 2026-10-01 19:33:12.769883+00
 user87@example.com  | 2026-09-30 15:19:59.399213+00
 user765@example.com | 2026-09-30 10:05:18.114685+00
(10 rows)

'Question 4'

postgres=# SELECT name,category,price
postgres-# FROM products
postgres-# WHERE name LIKE '%Keyboard%'
postgres-# ORDER BY name ASC;

        name         |  category   | price  
---------------------+-------------+--------
 Aero Keyboard 105   | Electronics |  11.65
 Aero Keyboard 176   | Office      | 328.57
 Aero Keyboard 46    | Office      | 231.43
 Aero Keyboard 78    | Lifestyle   |  12.43
 Aero Keyboard 91    | Office      | 102.39
 Atlas Keyboard 140  | Accessories | 256.30
 Nova Keyboard 183   | Furniture   | 312.61
 Nova Keyboard 48    | Electronics |  62.66
 Pulse Keyboard 103  | Furniture   | 241.24
 Pulse Keyboard 58   | Electronics | 246.13
 Pulse Keyboard 95   | Furniture   | 355.63
 Quartz Keyboard 190 | Electronics | 392.37
 Quartz Keyboard 31  | Electronics | 483.43
 Vertex Keyboard 168 | Office      | 172.55
 Vertex Keyboard 56  | Accessories | 478.23
(15 rows)


'Question 5'

postgres=# SELECT full_name,email
postgres-# FROM users
postgres-# WHERE full_name LIKE 'A%';

    full_name     |        email        
------------------+---------------------
 Ada Thompson     | user15@example.com
 Ada Knuth        | user17@example.com
 Alan Hamilton    | user23@example.com
 Ada Rossum       | user24@example.com
 Alan Torvalds    | user26@example.com
 Ada Kernighan    | user33@example.com
 Alan Liskov      | user41@example.com
 Alan Liskov      | user42@example.com
 Alan Thompson    | user44@example.com
 Alan Turing      | user48@example.com
 Alan Gosling     | user51@example.com
 Alan Kernighan   | user62@example.com
 Alan Knuth       | user68@example.com
 Alan Torvalds    | user72@example.com
 Alan Liskov      | user78@example.com
 Alan Gosling     | user81@example.com
 Ada Ritchie      | user102@example.com
 Ada Torvalds     | user106@example.com
 Ada Ritchie      | user116@example.com
 Alan Torvalds    | user127@example.com
 Ada Ritchie      | user128@example.com
 Alan McCarthy    | user130@example.com
 Ada Rossum       | user137@example.com
 Ada Dijkstra     | user153@example.com
 Alan Knuth       | user167@example.com
 Alan Stroustrup  | user168@example.com
 Alan Hopper      | user169@example.com
 Alan Hopper      | user180@example.com
 Alan Gosling     | user190@example.com
 Ada Ritchie      | user195@example.com
 Alan Kernighan   | user198@example.com
 Ada Hamilton     | user202@example.com
 Ada Liskov       | user203@example.com
 Alan Liskov      | user210@example.com
 Ada Berners-Lee  | user213@example.com
 Alan Hamilton    | user222@example.com
 Alan Torvalds    | user229@example.com
 Ada Dijkstra     | user260@example.com
 Alan Stroustrup  | user266@example.com
 Ada Thompson     | user267@example.com
 Ada Dijkstra     | user270@example.com
 Ada Kernighan    | user276@example.com
 Ada Hamilton     | user277@example.com
 Alan Hopper      | user303@example.com
 Alan Lovelace    | user312@example.com
 Alan Hopper      | user314@example.com
 Ada Liskov       | user328@example.com
 Ada Hopper       | user334@example.com
 Ada Dijkstra     | user343@example.com
 Ada Turing       | user350@example.com
 Alan Lovelace    | user358@example.com
 Ada Gosling      | user360@example.com
 Alan Torvalds    | user373@example.com
 Ada Berners-Lee  | user374@example.com
 Ada Turing       | user375@example.com
 Alan Berners-Lee | user377@example.com
 Ada Ritchie      | user378@example.com
 Alan Stroustrup  | user382@example.com
 Ada Turing       | user391@example.com
 Alan Liskov      | user401@example.com
 Alan Gosling     | user410@example.com
 Ada Stroustrup   | user420@example.com
 Ada Ritchie      | user422@example.com
 Ada Lovelace     | user428@example.com
 Alan Kernighan   | user430@example.com
 Alan Stroustrup  | user448@example.com
 Alan Turing      | user468@example.com
 Ada Lovelace     | user472@example.com
 Ada Rossum       | user484@example.com
 Alan McCarthy    | user487@example.com
 Alan Lovelace    | user490@example.com
 Ada McCarthy     | user493@example.com
 Ada Lovelace     | user523@example.com
 Alan Berners-Lee | user544@example.com
 Ada Gosling      | user554@example.com
 Alan Stroustrup  | user556@example.com
 Alan Turing      | user558@example.com
 Ada Hopper       | user559@example.com
 Alan Turing      | user562@example.com
 Alan Turing      | user582@example.com
 Ada Lovelace     | user583@example.com
 Alan Hopper      | user584@example.com
 Ada Thompson     | user601@example.com
 Alan Ritchie     | user606@example.com
 Alan Knuth       | user608@example.com
 Alan Rossum      | user610@example.com
 Alan Turing      | user618@example.com
 Ada Ritchie      | user644@example.com
 Alan Turing      | user645@example.com
 Alan Lovelace    | user663@example.com
 Alan Hamilton    | user667@example.com
 Alan Rossum      | user672@example.com
 Ada Gosling      | user681@example.com
 Alan Liskov      | user684@example.com
 Alan Stroustrup  | user688@example.com
 Ada Gosling      | user695@example.com
 Ada McCarthy     | user702@example.com
 Ada Hopper       | user718@example.com
 Alan Berners-Lee | user726@example.com
 Alan Thompson    | user729@example.com
 Alan Thompson    | user733@example.com
 Ada Kernighan    | user736@example.com
 Ada Rossum       | user740@example.com
 Alan Stroustrup  | user749@example.com
 Alan Ritchie     | user770@example.com
 Ada Hopper       | user773@example.com
 Alan Stroustrup  | user777@example.com
 Ada Liskov       | user778@example.com
 Alan Gosling     | user781@example.com
 Alan Turing      | user791@example.com
 Alan Gosling     | user794@example.com
 Alan Rossum      | user798@example.com
 Ada Thompson     | user815@example.com
 Alan Ritchie     | user827@example.com
 Alan Thompson    | user828@example.com
 Ada Hopper       | user829@example.com
 Alan Ritchie     | user830@example.com
 Alan Dijkstra    | user832@example.com
 Ada Knuth        | user833@example.com
 Ada Gosling      | user847@example.com
 Alan Thompson    | user854@example.com
 Alan Ritchie     | user866@example.com
 Ada Berners-Lee  | user874@example.com
 Alan Gosling     | user877@example.com
 Alan Kernighan   | user880@example.com
 Alan Hopper      | user884@example.com
 Alan Lovelace    | user887@example.com
 Ada Lovelace     | user894@example.com
 Ada McCarthy     | user900@example.com
 Ada Hamilton     | user904@example.com
 Alan Gosling     | user907@example.com
 Ada Liskov       | user915@example.com
 Alan Kernighan   | user918@example.com
 Ada Liskov       | user933@example.com
 Alan Lovelace    | user938@example.com
 Ada Gosling      | user941@example.com
 Ada Ritchie      | user944@example.com
 Alan Hopper      | user955@example.com
 Ada Gosling      | user957@example.com
 Alan Ritchie     | user958@example.com
 Alan Kernighan   | user962@example.com
 Ada Knuth        | user968@example.com
 Ada Ritchie      | user972@example.com
 Ada McCarthy     | user976@example.com
 Alan Berners-Lee | user996@example.com
 Alan Ritchie     | user999@example.com
(146 rows)


'Question 6'

postgres=# SELECT name, price
postgres-# FROM products
postgres-# WHERE category='Furniture'
postgres-# ORDER BY price ASC
postgres-# LIMIT 5;

          name           | price 
-------------------------+-------
 Vertex Backpack 133     | 19.72
 Vertex Water Bottle 132 | 28.86
 Quartz Desk Mat 178     | 31.64
 Quartz Notebook 96      | 46.23
 Orbit Backpack 1        | 81.04
(5 rows)


'Question 7'

postgres=# SELECT name,category,price 
postgres-# FROM products
postgres-# WHERE price BETWEEN 100 AND 200
postgres-# ORDER BY price DESC
postgres-# LIMIT 10;

          name          |  category   | price  
-----------------------+-------------+--------
 Quartz Desk Lamp 131  | Furniture   | 199.74
 Pulse Mouse 68        | Accessories | 197.21
 Nova Laptop Stand 192 | Furniture   | 193.68
 Vertex Headset 87     | Office      | 189.11
 Lumen Monitor 49      | Lifestyle   | 188.90
 Lumen Webcam 32       | Electronics | 188.45
 Quartz Monitor 43     | Office      | 185.38
 Pulse Backpack 196    | Office      | 184.47
 Vertex Desk Mat 199   | Furniture   | 183.01
 Pulse Desk Mat 163    | Accessories | 182.22
(10 rows)


'Question 8'


postgres=# SELECT name,price
postgres-# FROM products
postgres-# ORDER BY price DESC
postgres-# LIMIT 5 OFFSET 5;
 
         name          | price  
-----------------------+--------
 Aero Water Bottle 200 | 477.46
 Lumen Desk Mat 170    | 475.00
 Pulse Webcam 123      | 471.39
 Pulse Office Chair 94 | 467.32
 Aero Backpack 171     | 465.23
(5 rows)


'Question 9'

'Foreign key of the orders table from the users table

The id field from the users table is used as a foreign key in the orders table.
id is a primary key in the users table, and we need to have a connection from the users table to the orders table. 
The id column has a unique ID for each user, so it allows us to check the order made by a specific ID and find the 
corresponding user data. Having id as a foreign key in the orders table creates that relationship and helps us 
understand which user made a specific order from the orders table.
