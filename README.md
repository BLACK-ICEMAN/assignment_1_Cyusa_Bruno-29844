# assignment_1_Cyusa_Bruno-29844
PLSQL Assignment One - Sunrise Supermarket

NAME : CYUSA Bruno
ID : 29844
SQL/DBMS TOOL : Oracle (SQL*PLUS/ SQL Developer)

## How to run

1. Run '01_tables.sql' : To create the four tables (customers, products, orders, order_items).
2. Run '02_data.sql' : To insert sample data (6 customers, 8 products, 15 orders, 30 order_items).
3. Run '03_queries.sql' : To run 8 required queries in order. Each query is commented with the question it answers.

All scripts are plain Oracle SQL, so they can be run in both SQL*PLUS and SQL Developer.

## Scenario summary

Sunrise Supermarket sells products to customers who place orders containing one or more items. The sample dataset models:

I. 5 customers based in (kigali [2], musanze, huye and rubavu).
II. 8 products across 3 categories (Grocery, Dairy, Beverages).
III. 30 order_items linking orders to products with quantities.

## Executing '01_tables.sql' to create tables

create table customers ( customer_id number primary key, customer_name varchar2(100), email varchar2(100), city varchar2(50));
create table products (product_id number primary key, product_name varchar2(100), category varchar2(50), price number(10,2));
create table orders (order_id number primary key, customer_id number references customers(customer_id), order_date date);
create table order_items (order_item_id number primary key, order_id number references orders(order_id), product_id number references products(product_id), quantity number);

After running these queries you will have 4 four tables created !!

## Executing '02_data.sql' to insert data in the 4 tables created above

## Customers(5)

insert into customers (customer_id, customer_name, email, city) values (1, 'Alice Uwase', 'uwasealice@gmail.com');  
insert into customers (customer_id, customer_name, email, city) values (2, 'Ishimwe David', 'ishimwedavid@gmail.com);  
insert into customers (customer_id, customer_name, email, city) values (3, 'Iranzi Thiery', 'iranzithiery@gmail.com');  
insert into customers (customer_id, customer_name, email, city) values (4, 'Ishimwe Eric', 'ishimweeric@gmail.com');  
insert into customers (customer_id, customer_name, email, city) values (5, 'Shema Edwin', 'shemaedwin@gmail.com');

## Products(8)

insert into products (product_id, product_name, category, price) values (1, 'rice', 'grocery', 300);
insert into products (product_id, product_name, category, price) values (2, 'beans', 'grocery', 400);
insert into products (product_id, product_name, category, price) values (3, 'cooking oil', 'dairy', 500);
insert into products (product_id, product_name, category, price) values (4, 'milk', 'dairy', 700);
insert into products (product_id, product_name, category, price) values (5, 'cheese', 'dairy', 600);
insert into products (product_id, product_name, category, price) values (6, 'yogurt', 'dairy', 800);
insert into products (product_id, product_name, category, price) values (7, 'orange juice', 'beverage', 1000);
insert into products (product_id, product_name, category, price) values (8, 'water', 'beverage', 550);

## Orders(15, Jan-Mar 2026)

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

## Order_items (30)

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

## Executing '03_queries.sql' to run 8 required queries in order.

## Q1: List every order with the customer's name and city, and the order date. (INNER JOIN: orders + customers)

select o.order_id, c.customer_id, c.customer_name, c.city, o.order_date from orders o inner join customers c on o.customer_id = c.customer_id order by o.order_date, o.order_id;

<img width="206" height="161" alt="image" src="https://github.com/user-attachments/assets/3a03ed14-96cd-4bf8-b20d-fca73fb4ed58" />







