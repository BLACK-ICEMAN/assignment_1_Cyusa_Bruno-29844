# Assignment_1_Cyusa_Bruno_29844
PL/SQL Assignment One - Sunrise Supermarket

NAME : CYUSA Bruno
ID : 29844
SQL/DBMS TOOL : Oracle (SQL*PLUS/ SQL Developer)

# Assignment Overview

This repository contains an Oracle SQL database model built for Sunrise Supermarket. It uses structured relational tables to track customers, manage store inventories, and log individual retail sales. Below you will be able to see steps on how to do the following:

* Create tables with exact primary and foreign key constraints (Customer, Products, Order_items and Orders)
* Insert data into the tables created using seed records across regional locations, product categories, and transaction histories
* Execute queries including (Inner join and join operations, aggregations and filtering.

## Scenario summary

Sunrise Supermarket sells products to customers who place orders containing one or more items. The sample dataset models:

I. 5 customers based in (kigali [2], musanze, huye and rubavu).  
II. 8 products across 3 categories (Grocery, Dairy, Beverages).  
III. 15 Orders capturing historical sales transactions
IV. 30 order_items linking orders to products with quantities.

## How to run

1. Run '01_tables.sql' : To create the four tables (customers, products, orders, order_items).
2. Run '02_data.sql' : To insert sample data (6 customers, 8 products, 15 orders, 30 order_items).
3. Run '03_queries.sql' : To run 8 required queries in order. Each query is commented with the question it answers.

All scripts are plain Oracle SQL, so they can be run in both SQL*PLUS and SQL Developer.

## Step 1: Create Table Structures '01_tables.sql'
Run this script first to build the relational tables, data types, and primary/foreign key connections.
```sql  
create table customers ( customer_id number primary key, customer_name varchar2(100), email varchar2(100), city varchar2(50));  
create table products (product_id number primary key, product_name varchar2(100), category varchar2(50), price number(10,2));  
create table orders (order_id number primary key, customer_id number references customers(customer_id), order_date date);  
create table order_items (order_item_id number primary key, order_id number references orders(order_id), product_id number references products(product_id), quantity number);
```
You should have four tables created successfully!!
## Step 2: Seed the Database '02_data.sql'  
Run this second to seed the database records. The script closes with a mandatory transactional 'commit;' command to finalize the state.

## Customers(5)
```sql
insert into customers (customer_id, customer_name, email, city) values (1, 'Alice Uwase', 'uwasealice@gmail.com', 'kigali');  
insert into customers (customer_id, customer_name, email, city) values (2, 'Ishimwe David', 'ishimwedavid@gmail.com', 'musasnze');  
insert into customers (customer_id, customer_name, email, city) values (3, 'Iranzi Thiery', 'iranzithiery@gmail.com', 'kigali');  
insert into customers (customer_id, customer_name, email, city) values (4, 'Ishimwe Eric', 'ishimweeric@gmail.com', 'huye');  
insert into customers (customer_id, customer_name, email, city) values (5, 'Shema Edwin', 'shemaedwin@gmail.com', 'rubavu');
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
## Step 3: Analytics and executing queries '03_queries.sql'  
Run this operational script to evaluate assignment metrics. You will see the required metric and below you will see the script to execute the metric. 

## Q1: List every order with the customer's name and city, and the order date. (INNER JOIN: orders + customers)
```sql
select o.order_id, c.customer_id, c.customer_name, c.city, o.order_date from orders o inner join customers c on o.customer_id = c.customer_id order by o.order_date, o.order_id;
```
<img width="206" height="161" alt="image" src="https://github.com/user-attachments/assets/3a03ed14-96cd-4bf8-b20d-fca73fb4ed58" />  

This query combines the orders and customers tables using an INNER JOIN matching on customer_id. It filters out any customers who haven't placed orders to deliver a clean tracking sheet of customer locations alongside their transactional timestamps.

## Q2: List every order item with the product name, category, price, and quantityordered. (JOIN: order_items + products)
```sql
select oi.order_item_id, oi.order_id, p.product_id, p.product_name, p.category, p.price, oi.quantity from order_items oi join products p on oi.product_id = p.product_id order by oi.order_item_id;
```
<img width="279" height="312" alt="image" src="https://github.com/user-attachments/assets/37e8bf80-720c-46b6-bb07-f5cdb4265278" />

This query joins the order_items transactional table with the products lookup table. It maps the operational foreign keys to human-readable names, allowing inventory managers to see exactly which categories, item names, and specific quantities are driving order volumes.

## Q3: List all customers and, where they exist, their orders including customers whohave never placed an order. (LEFT JOIN: customers + orders)
```sql
select c.customer_id, c.customer_name, c.email, c.city, o.order_id, o.order_date from customers c left join orders o on c.customer_id = o.customer_id order by c.customer_id, o.order_date;
```
<img width="308" height="161" alt="image" src="https://github.com/user-attachments/assets/78b9c56c-ee1d-403b-bfcf-90267fe9b92c" />     

By using a LEFT JOIN stemming from customers to orders, this script ensures that every single registered user remains in the result set. If a user has never placed an order, their order fields will return as NULL, safely exposing inactive accounts for marketing outreach.

## Q4: Calculates each customer's total amount spent (quantity × price, summedacross all their order items), then returns only customers who have spent abovethe average customer spend. (Use a CTE to compute per-customer totals first, then filter against the average in the main query.)
```sql
with customer_totals as ( select c.customer_id, c.customer_name, c.email, c.city, sum(oi.quantity * p.price) 
as total_spent from customers c join orders o on o.customer_id = c.customer_id join order_items oi on oi.order_id = o.order_id join products p on p.product_id = oi.product_id 
group by c.customer_id, c.customer_name, c.email, c.city) 
select customer_id, customer_name, email, city, round(total_spent, 2) from customer_totals
where total_spent > (select avg(total_spent) from customer_totals);
```
<img width="301" height="23" alt="image" src="https://github.com/user-attachments/assets/11f41186-f094-4188-b800-55faf016c99f" />  

This query utilizes a Common Table Expression (CTE) named customer_totals to aggregate the total value (quantity * price) spent by each individual. The main query then applies a WHERE clause that evaluates those totals against a nested subquery computing the universal average.

## Q5: Rank customers by total amount spent, highest first
```sql
with customer_totals as ( select c.customer_id, c.customer_name, c.email, c.city, sum(oi.quantity * p.price) 
as total_spent from customers c join orders o on c.customer_id = o.customer_id join order_items oi on oi.order_id = o.order_id
join products p on p.product_id = oi.product_id group by c.customer_id, c.customer_name, c.email, c.city) 
select customer_id, customer_name, email, city, total_spent, rank () over (order by total_spent desc) as spend_rank from customer_totals order by spend_rank;
```
<img width="319" height="61" alt="image" src="https://github.com/user-attachments/assets/3dc53860-02b1-4cb8-9936-fb7ae7ed8dc3" />  

This query implements the RANK() window function over a pre-aggregated expenditure CTE. The analytical engine sorts the records in descending order (DESC), assigning identical ranks to matching spenders while skipping subsequent numbers to create a true corporate leaderboard.

## Q6: Number each customer's orders in the order placed.
```sql
select c.customer_name, o.order_id, o.order_date, row_number() over (partition by o.customer_id order by o.order_date) as order_sequence from orders o join customers c on c.customer_id = o.customer_id order by c.customer_name, order_sequence;
```
<img width="218" height="164" alt="image" src="https://github.com/user-attachments/assets/98620d5d-73e0-4646-98c2-f0a826d93e8d" />    

To evaluate operational order sequences, this query applies the ROW_NUMBER() window function. By utilizing PARTITION BY o.customer_id, the counter resets for every individual customer, numbering their orders sequentially starting from 1 based on the chronological order date.

## Q7: Show a running total of revenue over time, ordered by order date.
```sql
with order_revenue as ( select o.order_id, o.order_date, sum(oi.quantity * p.price) as order_revenue
from orders o join order_items oi on oi.order_id = o.order_id join products p on p.product_id = oi.product_id group by o.order_id, o.order_date)
select order_id, order_date, round(order_revenue, 2) as order_revenue, round(sum(order_revenue) over (order by order_date, order_id
rows between unbounded preceding and current row), 2) as running_total from order_revenue order by order_date, order_id;
```
<img width="207" height="164" alt="image" src="https://github.com/user-attachments/assets/8f56c91c-221a-41bb-bc00-33be9b45f319" />    

This query tracks financial momentum over time. It wraps an aggregation CTE inside a running summation query using SUM() OVER, specifying a window frame of ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW to calculate cumulative historical revenue up to each specific transaction date.

## Q8: For each customer with more than one order, show how many days passedbetween their current and previous order.
```sql
with order_gap as (select c.customer_name, o.order_id, o.order_date, o.order_date - lag (o.order_date) over (partition by o.customer_id order by o.order_date) as Days_since_previous_order 
from orders o join customers c on c.customer_id = o.customer_id)
select order_id, customer_name, order_date, Days_since_previous_order from order_gap 
where Days_since_previous_order is not null order by customer_name, order_date;
```

<img width="625" height="287" alt="image" src="https://github.com/user-attachments/assets/f5be5b18-bfa6-4d59-842e-feb91894088a" />    

This version uses a `WHERE Days_since_previous_order is not null` clause. It excludes the customer’s very first transaction since there is no prior purchase to compare it to. This isolates true repeat-buyer behavior.


```sql
with order_gap as (select c.customer_name, o.order_id, o.order_date, o.order_date - lag (o.order_date) over (partition by o.customer_id order by o.order_date) as Days_since_previous_order 
from orders o join customers c on c.customer_id = o.customer_id)
select order_id, customer_name, order_date, Days_since_previous_order from order_gap order by customer_name, order_date;
```

<img width="621" height="412" alt="image" src="https://github.com/user-attachments/assets/5c6aeaa3-66c3-4bbf-bc9a-dcf9c19fa0ba" />  

This version removes the filter to display the complete historical timeline for every customer. A customer's initial order safely returns a `NULL` value for the gap days, visually representing the baseline start of their shopping journey before tracking subsequent return visits.  

# Markdown  
## Business Interpretation  
Based on the execution of the analytical queries, management can extract the following key business insights for Sunrise Supermarket:   

* **Customer Behavior & Top Spenders:** Our customer base spans across regional cities, with Kigali housing our highest density of consumers. Through our ranking and expenditure queries, management can clearly identify VIP customers who spend above the company average, allowing the supermarket to target them with personalized loyalty programs.

* **Product Performance:** The order item breakdowns indicate high-volume movement in essential categories like *Dairy* and *Grocery* (such as milk and rice), while premium products like *Orange Juice* boost transaction values.
  
* **Revenue Trajectory:** The running total analysis reveals a steady growth in overall supermarket revenue from January through March 2026. This indicates stable operational health and reliable demand across seasonal transitions.
  
* **Purchase Frequency:** Tracking the gap days between consecutive orders allows management to evaluate customer retention. Shorter intervals between orders suggest excellent customer retention and steady dependency on our product inventory.
  
## Challenges and Resolutions  

# Issue 1
* I encountered an error (screenshot): the user password started with a number and oracle passwords should be quoted when starts with a number or follow naming rules as they must start with a letter not a number.
  
Note: When you use quotes, you have to type the password with quotes every time you connect too.

  <img width="533" height="425" alt="first error while creating user sunrise(1)" src="https://github.com/user-attachments/assets/0fea849c-bb12-48c3-beef-49b0fa15e7ff" />

# Issue 2
* I encountered an error of space allocation when i tried to insert values into tables.
  I was able to solve this issue by running these commands
  ```sql
  alter user sunrise quota unlimited on users;
  ```
  After this you will be able to insert values into tables.

# Issue 3
* I also faced an error when i tried to view details in tables.
  I was able to solve it using this command for a fast fix to clear the buffer
  ```sql
  clear screen;
  ```
  Then you can run
  ```sql
  select * from customers; and it will show you everything you inserted
  ```

  # Issue 4
  * I encountered an issue where database was not opening when i tried to use SQL*PLUS
    I solved it by running following commands:
    ```sql
    connect / as sysdba;
    show pdbs;
    alter pluggable database all open;
    alter pluggable database all save state; (it makes it automatic at every reboot)
    ```

# Note  
if you entered everything in oracle developer and want to view in sql*plus (go to oracle developer type command: commit; and then check again in sql*plus it will work)
  



















