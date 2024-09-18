CREATE DATABASE IF NOT EXISTS CoinHub;

USE CoinHub;

CREATE TABLE IF NOT EXISTS User (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Bank (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  image_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Account (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  bank_id INT NOT NULL,
  user_id INT NOT NULL,
  description VARCHAR(255),
  type ENUM('checking', 'savings', 'investment', 'credit') NOT NULL,
  FOREIGN KEY (bank_id) REFERENCES Bank(id),
  FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE IF NOT EXISTS Currency (
  id INT AUTO_INCREMENT PRIMARY KEY,
  acronym VARCHAR(10) NOT NULL,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  color VARCHAR(20),
  icon VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Transaction (
  id INT AUTO_INCREMENT PRIMARY KEY,
  type ENUM('income', 'expense') NOT NULL,
  description VARCHAR(255),
  amount FLOAT NOT NULL,
  category_id INT,  -- Chave estrangeira opcional
  account_id INT NOT NULL,
  currency_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Category(id),
  FOREIGN KEY (account_id) REFERENCES Account(id),
  FOREIGN KEY (currency_id) REFERENCES Currency(id)
);

CREATE TABLE IF NOT EXISTS Objective (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  current_amount FLOAT NOT NULL,
  objective_amount FLOAT NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  date DATE NOT NULL,
  color VARCHAR(20),
  icon VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES User(id)
);
