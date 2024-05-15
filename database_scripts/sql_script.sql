-- Drop the database if it exists to ensure a clean slate
DROP DATABASE IF EXISTS raksha_pipes;

-- Create a new database named raksha_pipes
CREATE DATABASE raksha_pipes;

-- Use the raksha_pipes database for further operations
USE raksha_pipes;

-- Create a table to store customer data
CREATE TABLE Customers (
    customer_id bigint PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    country varchar(255)
);

-- Load data from customers.csv into the Customers table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers.csv'
INTO TABLE Customers 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

-- Create a table to store order details
CREATE TABLE orderdetails  (
    OrderDetailID int PRIMARY KEY,
    OrderID int,
    ProductID int,
    Quantity int,
    SupplierID int
);

-- Load data from orderdetails.csv into the orderdetails table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orderdetails.csv'
INTO TABLE orderdetails 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

-- Create a table to store order information
CREATE TABLE orders (
    OrderID int PRIMARY KEY,
    CustomerID int,
    PaymentID int,
    ShipperID int,
    Total_order_amount int
);

-- Load data from orders.csv into the orders table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv'
INTO TABLE orders 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

-- Create a table to store payment information
CREATE TABLE payments (
    PaymentID int PRIMARY KEY,
    PaymentType varchar(255),
    Allowed varchar(10)
);

-- Load data from payments.csv into the payments table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/payments.csv'
INTO TABLE payments 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

-- Create a table to store product information
CREATE TABLE products (
    product_id int PRIMARY KEY,
    supplier_id int,
    product_name varchar(255),
    category varchar(255),
    unit_price decimal(10, 2)
);

-- Load data from products.csv into the products table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products.csv'
INTO TABLE products 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

-- Create a table to store shipper information
CREATE TABLE shipper (
    ShipperID int PRIMARY KEY,
    CompanyName varchar(255),
    Email varchar(255)
);

-- Load data from shipper.csv into the shipper table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/shipper.csv'
INTO TABLE shipper 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

-- Create a table to store supplier information
CREATE TABLE suppliers (
    SupplierID int PRIMARY KEY,
    CompanyName varchar(255),
    City varchar(255),
    State varchar(255),
    Country varchar(255),
    Email varchar(255)
);

-- Load data from suppliers.csv into the suppliers table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/suppliers.csv'
INTO TABLE suppliers 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

-- Create a table to store category information
CREATE TABLE category  (
    CategoryID int PRIMARY KEY,
    CategoryName varchar(255),
    Active varchar(100)
);

-- Load data from category.csv into the category table
LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/category.csv'
INTO TABLE category 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;



