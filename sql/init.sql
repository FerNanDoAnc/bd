CREATE DATABASE IF NOT EXISTS inventario_db;
USE inventario_db;

CREATE TABLE IF NOT EXISTS inventario_db.Categories (
 Id INT PRIMARY KEY AUTO_INCREMENT,
 Name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS inventario_db.Products (
 Id INT PRIMARY KEY AUTO_INCREMENT,
 Name VARCHAR(255) NOT NULL,
 Description TEXT,
 Price DECIMAL(10,2),
 Stock INT,
 CategoryId INT,
 FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);
