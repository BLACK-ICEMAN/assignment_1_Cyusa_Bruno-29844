create table customers ( customer_id number primary key, customer_name varchar2(100), email varchar2(100), city varchar2(50));  
create table products (product_id number primary key, product_name varchar2(100), category varchar2(50), price number(10,2));  
create table orders (order_id number primary key, customer_id number references customers(customer_id), order_date date);  
create table order_items (order_item_id number primary key, order_id number references orders(order_id), product_id number references products(product_id), quantity number);
