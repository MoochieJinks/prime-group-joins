-- Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;

-- Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id;

-- Which warehouses have cheetos?
SELECT * FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
WHERE products.id = 5;

-- Which warehouses have diet pepsi?
SELECT * FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
WHERE products.id = 6;

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id JOIN orders ON addresses.id = orders.address_id;

-- How many customers do we have?
SELECT count(*) AS exact_count FROM customers;

-- How many products do we carry?
SELECT count(*) AS exact_count FROM products;

-- What is the total available on-hand quantity of diet pepsi?
SELECT count(*) AS exact_count FROM warehouse_product JOIN warehouse ON warehouse_product.product_id =  WHERE product_id = 6;

