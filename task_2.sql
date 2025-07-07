CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;


CREATE TABLE Authors(
author_id INT PRIMARY KEY AUTO_INCREMENT,
author_name VARCHAR (215) NOT NULL);

CREATE TABLE Books(
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR (130), 
author_id int,
price DOUBLE,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(215),
customer_name VARCHAR(215),
address TEXT);

CREATE TABLE Orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE);

CREATE TABLE Order_Details(
orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id),
order_id INT,
book_id INT,
quantity DOUBLE);