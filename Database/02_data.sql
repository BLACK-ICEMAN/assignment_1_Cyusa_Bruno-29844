-- Customers (5) 
insert into customers (customer_id, customer_name, email, city) values (1, 'Alice Uwase', 'uwasealice@gmail.com', 'kigali');  
insert into customers (customer_id, customer_name, email, city) values (2, 'Ishimwe David', 'ishimwedavid@gmail.com', 'musasnze');  
insert into customers (customer_id, customer_name, email, city) values (3, 'Iranzi Thiery', 'iranzithiery@gmail.com', 'kigali');  
insert into customers (customer_id, customer_name, email, city) values (4, 'Ishimwe Eric', 'ishimweeric@gmail.com', 'huye');  
insert into customers (customer_id, customer_name, email, city) values (5, 'Shema Edwin', 'shemaedwin@gmail.com', 'rubavu');


-- Products (8, across 3 categories: grocery, dairy, beverage)
insert into products (product_id, product_name, category, price) values (1, 'rice', 'grocery', 300);  
insert into products (product_id, product_name, category, price) values (2, 'beans', 'grocery', 400);  
insert into products (product_id, product_name, category, price) values (3, 'cooking oil', 'dairy', 500);  
insert into products (product_id, product_name, category, price) values (4, 'milk', 'dairy', 700);  
insert into products (product_id, product_name, category, price) values (5, 'cheese', 'dairy', 600);  
insert into products (product_id, product_name, category, price) values (6, 'yogurt', 'dairy', 800);  
insert into products (product_id, product_name, category, price) values (7, 'orange juice', 'beverage', 1000);  
insert into products (product_id, product_name, category, price) values (8, 'water', 'beverage', 550);


-- Orders (15, spanning Jan-Mar 2026)
insert into orders (order_id, customer_id, order_date) values (1, 1, to_date('2026-01-05','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (2, 2, to_date('2026-01-07','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (3, 1, to_date('2026-01-15','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (4, 3, to_date('2026-01-20','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (5, 4, to_date('2026-01-22','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (6, 2, to_date('2026-02-01','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (7, 1, to_date('2026-02-03','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (8, 5, to_date('2026-02-10','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (9, 3, to_date('2026-02-14','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (10, 2, to_date('2026-02-20','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (11, 4, to_date('2026-03-01','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (12, 1, to_date('2026-03-05','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (13, 5, to_date('2026-03-10','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (14, 3, to_date('2026-03-15','YYYY-MM-DD'));  
insert into orders (order_id, customer_id, order_date) values (15, 2, to_date('2026-03-20','YYYY-MM-DD'));


-- Order items (30)
insert into, order_items (order_item_id, order_id, product_id, quantity) values (1, 1, 1, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (2, 2, 4, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (3, 2, 2, 5);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (4, 3, 7, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (5, 4, 2, 2);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (6, 5, 1, 2);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (7, 5, 5, 5);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (8, 6, 4, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (9, 6, 8, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (10, 6, 5, 2);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (11, 7, 6, 2);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (12, 7, 3, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (13, 7, 2, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (14, 8, 7, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (15, 9, 6, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (16, 9, 5, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (17, 10, 2, 5);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (18, 10, 4, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (19, 10, 1, 5);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (20, 11, 4, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (21, 11, 6, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (22, 12, 5, 2);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (23, 12, 1, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (24, 13, 5, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (25, 13, 4, 2);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (26, 13, 6, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (27, 14, 4, 3);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (28, 14, 6, 1);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (29, 15, 4, 4);  
insert into, order_items (order_item_id, order_id, product_id, quantity) values (30, 15, 2, 4);

commit;
