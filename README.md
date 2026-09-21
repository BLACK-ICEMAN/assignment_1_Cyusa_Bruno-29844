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
```sql  
create table customers ( customer_id number primary key, customer_name varchar2(100), email varchar2(100), city varchar2(50));  
create table products (product_id number primary key, product_name varchar2(100), category varchar2(50), price number(10,2));  
create table orders (order_id number primary key, customer_id number references customers(customer_id), order_date date);  
create table order_items (order_item_id number primary key, order_id number references orders(order_id), product_id number references products(product_id), quantity number);
```
After running these queries you will have 4 four tables created !!

## Executing '02_data.sql' to insert data in the 4 tables created above

## Customers(5)
```sql
insert into customers (customer_id, customer_name, email, city) values (1, 'Alice Uwase', 'uwasealice@gmail.com');  
insert into customers (customer_id, customer_name, email, city) values (2, 'Ishimwe David', 'ishimwedavid@gmail.com');  
insert into customers (customer_id, customer_name, email, city) values (3, 'Iranzi Thiery', 'iranzithiery@gmail.com');  
insert into customers (customer_id, customer_name, email, city) values (4, 'Ishimwe Eric', 'ishimweeric@gmail.com');  
insert into customers (customer_id, customer_name, email, city) values (5, 'Shema Edwin', 'shemaedwin@gmail.com');
```
## Products(8)
```sql
insert into products (product_id, product_name, category, price) values (1, 'rice', 'grocery', 300);  
insert into products (product_id, product_name, category, price) values (2, 'beans', 'grocery', 400);  
insert into products (product_id, product_name, category, price) values (3, 'cooking oil', 'dairy', 500);  
insert into products (product_id, product_name, category, price) values (4, 'milk', 'dairy', 700);  
insert into products (product_id, product_name, category, price) values (5, 'cheese', 'dairy', 600);  
insert into products (product_id, product_name, category, price) values (6, 'yogurt', 'dairy', 800);  
insert into products (product_id, product_name, category, price) values (7, 'orange juice', 'beverage', 1000);  
insert into products (product_id, product_name, category, price) values (8, 'water', 'beverage', 550);
```
## Orders(15, Jan-Mar 2026)
```sql
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
```
## Order_items (30)
```sql
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
```
## Executing '03_queries.sql' to run 8 required queries in order.

## Q1: List every order with the customer's name and city, and the order date. (INNER JOIN: orders + customers)
```sql
select o.order_id, c.customer_id, c.customer_name, c.city, o.order_date from orders o inner join customers c on o.customer_id = c.customer_id order by o.order_date, o.order_id;
```
<img width="206" height="161" alt="image" src="https://github.com/user-attachments/assets/3a03ed14-96cd-4bf8-b20d-fca73fb4ed58" />

## Q2: List every order item with the product name, category, price, and quantityordered. (JOIN: order_items + products)
```sql
select oi.order_item_id, oi.order_id, p.product_id, p.product_name, p.category, p.price, oi.quantity from order_items oi join products p on oi.product_id = p.product_id order by oi.order_item_id;
```
<img width="279" height="312" alt="image" src="https://github.com/user-attachments/assets/37e8bf80-720c-46b6-bb07-f5cdb4265278" />

## Q3: List all customers and, where they exist, their orders including customers whohave never placed an order. (LEFT JOIN: customers + orders)
```sql
select c.customer_id, c.customer_name, c.email, c.city, o.order_id, o.order_date from customers c left join orders o on c.customer_id = o.customer_id order by c.customer_id, o.order_date;
```
<img width="308" height="161" alt="image" src="https://github.com/user-attachments/assets/78b9c56c-ee1d-403b-bfcf-90267fe9b92c" />  

## Q4: Calculates each customer's total amount spent (quantity × price, summedacross all their order items), then returns only customers who have spent abovethe average customer spend. (Use a CTE to compute per-customer totals first, then filter against the average in the main query.)
```sql
with customer_totals as ( select c.customer_id, c.customer_name, c.email, c.city, sum(oi.quantity * p.price) 
as total_spent from customers c join orders o on o.customer_id = c.customer_id join order_items oi on oi.order_id = o.order_id join products p on p.product_id = oi.product_id 
group by c.customer_id, c.customer_name, c.email, c.city) 
select customer_id, customer_name, email, city, round(total_spent, 2) from customer_totals
where total_spent > (select avg(total_spent) from customer_totals);
```
<img width="301" height="23" alt="image" src="https://github.com/user-attachments/assets/11f41186-f094-4188-b800-55faf016c99f" />

## Q5: Rank customers by total amount spent, highest first
```sql
with customer_totals as ( select c.customer_id, c.customer_name, c.email, c.city, sum(oi.quantity * p.price) 
as total_spent from customers c join orders o on c.customer_id = o.customer_id join order_items oi on oi.order_id = o.order_id
join products p on p.product_id = oi.product_id group by c.customer_id, c.customer_name, c.email, c.city) 
select customer_id, customer_name, email, city, total_spent, rank () over (order by total_spent desc) as spend_rank from customer_totals order by spend_rank;
```
<img width="319" height="61" alt="image" src="https://github.com/user-attachments/assets/3dc53860-02b1-4cb8-9936-fb7ae7ed8dc3" />

## Q6: Number each customer's orders in the order placed.
```sql
select c.customer_name, o.order_id, o.order_date, row_number() over (partition by o.customer_id order by o.order_date) as order_sequence from orders o join customers c on c.customer_id = o.customer_id order by c.customer_name, order_sequence;
```
<img width="218" height="164" alt="image" src="https://github.com/user-attachments/assets/98620d5d-73e0-4646-98c2-f0a826d93e8d" />  

## Q7: Show a running total of revenue over time, ordered by order date.
```sql
with order_revenue as ( select o.order_id, o.order_date, sum(oi.quantity * p.price) as order_revenue
from orders o join order_items oi on oi.order_id = o.order_id join products p on p.product_id = oi.product_id group by o.order_id, o.order_date)
select order_id, order_date, round(order_revenue, 2) as order_revenue, round(sum(order_revenue) over (order by order_date, order_id
rows between unbounded preceding and current row), 2) as running_total from order_revenue order by order_date, order_id;
```
<img width="207" height="164" alt="image" src="https://github.com/user-attachments/assets/8f56c91c-221a-41bb-bc00-33be9b45f319" />  

## Q8: For each customer with more than one order, show how many days passedbetween their current and previous order.
```sql
with order_gap as (select c.customer_name, o.order_id, o.order_date, o.order_date - lag (o.order_date) over (partition by o.customer_id order by o.order_date) as Days_since_previous_order 
from orders o join customers c on c.customer_id = o.customer_id)
select order_id, customer_name, order_date, Days_since_previous_order from order_gap 
where Days_since_previous_order is not null order by customer_name, order_date;
```

```sql
with order_gap as (select c.customer_name, o.order_id, o.order_date, o.order_date - lag (o.order_date) over (partition by o.customer_id order by o.order_date) as Days_since_previous_order 
from orders o join customers c on c.customer_id = o.customer_id)
select order_id, customer_name, order_date, Days_since_previous_order from order_gap order by customer_name, order_date;
```














