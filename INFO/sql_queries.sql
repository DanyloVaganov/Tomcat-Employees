

-- База данных
CREATE DATABASE employee_store_db;


-- Права нового пользователя
-- (создание, изменение, удаление таблиц).
GRANT CREATE, ALTER, DROP
ON employee_store_db.*
TO 'dev'@'localhost';

-- Права нового пользователя
-- (манипуляции с данными таблиц).
GRANT INSERT, SELECT, UPDATE, DELETE
ON employee_store_db.*
TO 'dev'@'localhost';


USE employee_store_db;

-- Таблица
CREATE TABLE IF NOT EXISTS employees
( id INTEGER NOT NULL AUTO_INCREMENT,
name VARCHAR(128) NOT NULL,
position VARCHAR(128) NOT NULL,
phone VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
);