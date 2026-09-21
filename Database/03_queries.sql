-- Q1: List every order with the customer's name and city, and the order date. (INNER JOIN: orders + customers)
select o.order_id, c.customer_id, c.customer_name, c.city, o.order_date 
  from orders o inner join customers c on o.customer_id = c.customer_id order by o.order_date, o.order_id;

-- Q2: List every order item with the product name, category, price, and quantity ordered. (JOIN: order_items + products)
select oi.order_item_id, oi.order_id, p.product_id, p.product_name, p.category, p.price, oi.quantity 
  from order_items oi join products p on oi.product_id = p.product_id order by oi.order_item_id;

-- Q3: List all customers and, where they exist, their orders including customers whohave never placed an order. (LEFT JOIN: customers + orders)
select c.customer_id, c.customer_name, c.email, c.city, o.order_id, o.order_date 
  from customers c left join orders o on c.customer_id = o.customer_id order by c.customer_id, o.order_date;

-- Q4: Calculates each customer's total amount spent (quantity × price, summedacross all their order items), then returns only customers who have spent abovethe average customer spend. 
      -- (Use a CTE to compute per-customer totals first, then filter against the average in the main query.)
-- First part is CTE 
with customer_totals as ( select c.customer_id, c.customer_name, c.email, c.city, sum(oi.quantity * p.price) as total_spent 
  from customers c join orders o on o.customer_id = c.customer_id join order_items oi on oi.order_id = o.order_id join products p on p.product_id = oi.product_id 
  group by c.customer_id, c.customer_name, c.email, c.city) 
-- second part is the main query
select customer_id, customer_name, email, city, round(total_spent, 2) 
  from customer_totals where total_spent > (select avg(total_spent) from customer_totals);

-- Q5: Rank customers by total amount spent, highest first
-- CTE 
with customer_totals as ( select c.customer_id, c.customer_name, c.email, c.city, sum(oi.quantity * p.price) as total_spent 
  from customers c join orders o on c.customer_id = o.customer_id join order_items oi on oi.order_id = o.order_idjoin products p on p.product_id = oi.product_id 
  group by c.customer_id, c.customer_name, c.email, c.city) 
  -- Main query
select customer_id, customer_name, email, city, total_spent, rank () over (order by total_spent desc) as spend_rank 
  from customer_totals order by spend_rank;

-- Q6: Number each customer's orders in the order placed.
select c.customer_name, o.order_id, o.order_date, row_number() over (partition by o.customer_id order by o.order_date) as order_sequence 
  from orders o join customers c on c.customer_id = o.customer_id order by c.customer_name, order_sequence;

-- Q7: Show a running total of revenue over time, ordered by order date.

-- CTE 
with order_revenue as ( select o.order_id, o.order_date, sum(oi.quantity * p.price) as order_revenue 
  from orders o join order_items oi on oi.order_id = o.order_id join products p on p.product_id = oi.product_id 
  group by o.order_id, o.order_date)
  -- Main query
select order_id, order_date, round(order_revenue, 2) as order_revenue, round(sum(order_revenue) over (order by order_date, order_id
rows between unbounded preceding and current row), 2) as running_total from order_revenue order by order_date, order_id;

-- Q8: For each customer with more than one order, show how many days passedbetween their current and previous order.
-- This query filters out the first order (Dropping null/blank space)
-- CTE
with order_gap as (select c.customer_name, o.order_id, o.order_date, o.order_date - lag (o.order_date) over (partition by o.customer_id order by o.order_date) as Days_since_previous_order 
from orders o join customers c on c.customer_id = o.customer_id)
  -- Main query
select order_id, customer_name, order_date, Days_since_previous_order from order_gap 
where Days_since_previous_order is not null order by customer_name, order_date;

-- This query keeps the first order (Showing null/blank spaces)
-- CTE
with order_gap as (select c.customer_name, o.order_id, o.order_date, o.order_date - lag (o.order_date) over (partition by o.customer_id order by o.order_date) as Days_since_previous_order 
from orders o join customers c on c.customer_id = o.customer_id)
  -- Main query
select order_id, customer_name, order_date, Days_since_previous_order from order_gap order by customer_name, order_date;


