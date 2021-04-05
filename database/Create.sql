DROP DATABASE IF EXISTS diamond;

CREATE DATABASE diamond;

CREATE TABLE admin (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL

);

CREATE TABLE member (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    fullName VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    validFrom DATE NOT NULL,
    validTo DATE NOT NULL
);

CREATE TABLE product (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    price VARCHAR(255) NOT NULL,
    brand VARCHAR(255) NOT NULL
);


CREATE TABLE customerOrder (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phoneNumber VARCHAR(255) NOT NULL,
    productId int NOT NULL,
    orderDate DATE NOT NULL,
    orderStatus VARCHAR(255) NOT NULL,
    quantity int(11) NOT NULL,
    totalAmount int(100) NOT NULL,
    FOREIGN KEY (productId) REFERENCES product(id)
    
);


CREATE TABLE orders (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    productId int,
    memberId int,
    orderDate DATE NOT NULL,
    orderStatus VARCHAR(255) NOT NULL,
    quantity int(11) NOT NULL,
    FOREIGN KEY (productId) REFERENCES product(id),
    FOREIGN KEY (memberId) REFERENCES member(id)
);

CREATE TABLE blog (
    id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description text NOT NULL,
    image VARCHAR(255) NOT NULL

);