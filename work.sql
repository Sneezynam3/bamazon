DROP DATABASE IF EXISTS bamazon;
CREATE database bamazon;
USE bamazon;

CREATE table products(
item_id INT AUTO_INCREMENT NOT NULL, 
product_name VARCHAR(30) NOT NULL, 
department_name VARCHAR(30) NOT NULL, 
price FLOAT NOT NULL, 
stock_quantity INT NOT NULL,
PRIMARY KEY(item_id)
);

