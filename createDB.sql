-- Подключение к MySQL и создание базы данных
CREATE DATABASE IF NOT EXISTS FriendsOfHumans;

-- Использование созданной базы данных
USE FriendsOfHumans;

-- Создание таблиц
CREATE TABLE IF NOT EXISTS DomesticAnimals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal_type VARCHAR(50),
    name VARCHAR(50),
    command VARCHAR(100),
    birth_date DATE
);

CREATE TABLE IF NOT EXISTS WorkingAnimals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal_type VARCHAR(50),
    name VARCHAR(50),
    command VARCHAR(100),
    birth_date DATE
);

CREATE TABLE IF NOT EXISTS YoungAnimals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal_type VARCHAR(50),
    name VARCHAR(50),
    command VARCHAR(100),
    birth_date DATE,
    age_months INT
);