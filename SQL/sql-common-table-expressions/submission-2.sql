CREATE TABLE customers (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name TEXT
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  customer_id INTEGER,
  price INTEGER
);

INSERT INTO customers (name) VALUES
  ('Alice'),
  ('Bob'),
  ('Charlie'),
  ('David'),
  ('Eve'),
  ('Frank'),
  ('Grace'),
  ('Hank');

INSERT INTO orders (customer_id, price) VALUES
  (1, 50),
  (2, 100),
  (3, 150),
  (4, 200),
  (5, 250),
  (6, 30),
  (7, 70),
  (8, 400);
-- Do not modify above this line. --

with max_priced_customers as (
  select customer_id, max(price) as max_price
  from orders 
  group by customer_id)

select c.name as name
from customers c
join max_priced_customers mp
on c.id = mp.customer_id
where mp.max_price < 100
order by c.name asc;










