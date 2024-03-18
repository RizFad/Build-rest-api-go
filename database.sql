-- create database
CREATE DATABASE rest_api;

-- create table items
CREATE TABLE items (
  item_id SERIAL PRIMARY KEY NOT NULL,
  item_code VARCHAR(100) NOT NULL, 
  description TEXT NOT NULL, 
  quantity VARCHAR(255),
  order_id INT,
  created_at TIMESTAMP DEFAULT NOW() NOT NULL, 
  updated_at TIMESTAMP DEFAULT NOW() NOT NULL, 
  deleted_at TIMESTAMP,
  CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders (order_id) ON DELETE CASCADE
);

-- create table orders
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY NOT NULL,
  user_id INT NOT NULL,
  customer_name VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW() NOT NULL, 
  updated_at TIMESTAMP DEFAULT NOW() NOT NULL, 
  deleted_at TIMESTAMP  
);
