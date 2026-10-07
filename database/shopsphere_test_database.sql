-- ShopSphere E-Commerce Database Testing
-- Fictional portfolio database for basic MySQL testing

DROP DATABASE IF EXISTS shopsphere_test;
CREATE DATABASE shopsphere_test;
USE shopsphere_test;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(100),
    price DECIMAL(10,2),
    stock_qty INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(101,'Aditi Sharma','aditi.sharma@example.com','Pune'),
(102,'Rahul Mehta','rahul.mehta@example.com','Mumbai'),
(103,'Neha Joshi','neha.joshi@example.com','Kolhapur'),
(104,'Vikas Patil','vikas.patil@example.com','Pune');

INSERT INTO products VALUES
(201,'Wireless Headphones','Electronics',2499.00,25),
(202,'Smart Watch','Electronics',3999.00,15),
(203,'Laptop Backpack','Accessories',1499.00,40),
(204,'USB-C Charger','Electronics',999.00,50);

INSERT INTO orders VALUES
(301,101,'2026-09-02','Delivered',2499.00),
(302,102,'2026-09-04','Delivered',3999.00),
(303,101,'2026-09-10','Delivered',2998.00),
(304,103,'2026-09-12','Pending',1499.00);

INSERT INTO order_items VALUES
(401,301,201,1,2499.00),
(402,302,202,1,3999.00),
(403,303,203,2,1499.00),
(404,304,203,1,1499.00);

-- SQL Test 1: Verify product stock is non-negative
SELECT product_id, product_name, stock_qty
FROM products
WHERE stock_qty < 0;

-- Expected: 0 rows

-- SQL Test 2: Verify delivered orders have positive total amount
SELECT order_id, status, total_amount
FROM orders
WHERE status = 'Delivered' AND total_amount <= 0;

-- Expected: 0 rows

-- SQL Test 3: Verify customer-order relationship
SELECT o.order_id, c.customer_name, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Expected: Every order should have a valid customer

-- SQL Test 4: Count orders per customer
SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

-- Expected: Aditi = 2, Rahul = 1, Neha = 1, Vikas = 0

-- SQL Test 5: Verify order item quantity is positive
SELECT order_item_id, quantity
FROM order_items
WHERE quantity <= 0;

-- Expected: 0 rows
