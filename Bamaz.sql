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

SELECT * FROM bamazon.products;
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)

VALUES ("Pistons", "Mechanical", 389, 7),
("Cam shaft", "Mechanical", 215, 3),
("Roller lifters", "Mechanical", 275, 3),
("Roller rocker arms", "Mechanical", 215, 2),
("Pearlesent Black", "Paint", 700, 100),
("Pearlesent White", "Paint", 700, 100),
("Pull me over red", "Paint", 700, 100),
("GoodYear", "Tires", 600, 20),
("Firestone", "tires", 550, 20), 
("Coca-cola", "Beverage", 2.99, 40),
("Budweiser", "Beverage", 2.49, 100);