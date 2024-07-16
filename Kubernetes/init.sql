CREATE DATABASE IF NOT EXISTS goods;
CREATE USER IF NOT EXISTS 'user' @'%' IDENTIFIED BY 'padlizcan1';
GRANT ALL PRIVILEGES ON goods.* TO 'user' @'%';
FLUSH PRIVILEGES;
USE goods;

CREATE TABLE IF NOT EXISTS stock (
  product VARCHAR(100) NOT NULL, 
  code VARCHAR(50) NOT NULL, 
  price INT (10) NOT NULL
);
INSERT INTO stock (product, code, price) 
VALUES 
  (
    'AirPods2', '32f86a419', 
    '249'
  ), 
  (
    'Apple Watch9 Aluminium', '32f86a589', 
    '399'
  ), 
  (
    'Apple TV 4k Wi-Fi', '32f86a612', 
    '129'
  );
