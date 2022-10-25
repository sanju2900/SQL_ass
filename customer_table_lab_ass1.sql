-- 1. Create an orders/ product /customer table with the following schema.
-- CUSTOMERS table:
--     cust_id
--     name
--     address
-- tel
-- email

-- ITEMS table:
--     item_id
--     name
-- price

-- ORDERS table:
--   order _id
--     customer_id
-- datetime

-- ORDER_ITEM table:
--     ord_item_id
--     order_id
--     item_id
--     product_quantity"
-- Decide and create relations between the tables. 
-- Create enough data in the tables as well.


-- create a table
CREATE TABLE customer_table (
  cus_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  address TEXT NOT NULL,
  tel INTEGER ,
  email varchar(50)
);

-- insert some values
INSERT INTO customer_table VALUES (1, 'Ryan', 'hajipur','56742457','ryan@gmail.com');
INSERT INTO customer_table VALUES (2, 'Sanju', 'patna','56842457','sanju@gmail.com');
INSERT INTO customer_table VALUES (3, 'krishu', 'Delhi','99742457','krishu@gmail.com');

-- fetch some values
SELECT * FROM customer_table WHERE cus_id >1;

CREATE TABLE item_table (
  item_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  price INTEGER 
 );
 
 
 -- insert some values
INSERT INTO item_table VALUES (1, 'frok', 568);
INSERT INTO item_table VALUES (2, 'Saree', 876);
INSERT INTO item_table VALUES (3, 'jeans', 1033);

-- fetch some values
SELECT * FROM item_table WHERE item_id >1;

CREATE TABLE ORDER_table (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  DaTe datetime
);

INSERT INTO ORDER_table VALUES (1, 2, 2/10/2022);
INSERT INTO ORDER_table VALUES (2, 3, 5/09/2022);
INSERT INTO ORDER_table VALUES (3, 4, 5/10/2022);

-- fetch some values
SELECT * FROM ORDER_table WHERE order_id <2;

CREATE TABLE ORDER_ITEM_table (

  ord_item_id INTEGER PRIMARY KEY,
  order_id INTEGER,
  item_id INTEGER,
  product_quantity varchar(30)
);

INSERT INTO ORDER_ITEM_table VALUES (1, 2,2, 'good');
INSERT INTO ORDER_ITEM_table VALUES (2, 3, 1,'very good');
INSERT INTO ORDER_ITEM_table VALUES (3, 4, 3,'excellent');

-- fetch some values
SELECT * FROM ORDER_ITEM_table WHERE order_id<2 AND item_id>1;