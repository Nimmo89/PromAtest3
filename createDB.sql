-- Подключение к MySQL и создание базы данных
CREATE DATABASE IF NOT EXISTS FriendsOfHumans;

-- Использование созданной базы данных
USE FriendsOfHumans;

-- Создание таблиц
CREATE TABLE Animal (
    animal_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_type VARCHAR(50)
);

CREATE TABLE DomesticAnimal (
    domestic_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT,
    name VARCHAR(50),
    command VARCHAR(100),
    birth_date DATE,
    FOREIGN KEY (animal_id) REFERENCES Animal(animal_id)
);

CREATE TABLE WorkingAnimal (
    working_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT,
    name VARCHAR(50),
    command VARCHAR(100),
    birth_date DATE,
    FOREIGN KEY (animal_id) REFERENCES Animal(animal_id)
);

CREATE TABLE Dog (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    domestic_id INT,
    breed VARCHAR(50),
    FOREIGN KEY (domestic_id) REFERENCES DomesticAnimal(domestic_id)
);

CREATE TABLE Cat (
    cat_id INT AUTO_INCREMENT PRIMARY KEY,
    domestic_id INT,
    breed VARCHAR(50),
    FOREIGN KEY (domestic_id) REFERENCES DomesticAnimal(domestic_id)
);

CREATE TABLE Hamster (
    hamster_id INT AUTO_INCREMENT PRIMARY KEY,
    domestic_id INT,
    color VARCHAR(50),
    FOREIGN KEY (domestic_id) REFERENCES DomesticAnimal(domestic_id)
);

CREATE TABLE Horse (
    horse_id INT AUTO_INCREMENT PRIMARY KEY,
    working_id INT,
    color VARCHAR(50),
    FOREIGN KEY (working_id) REFERENCES WorkingAnimal(working_id)
);

CREATE TABLE Camel (
    camel_id INT AUTO_INCREMENT PRIMARY KEY,
    working_id INT,
    hump_number INT,
    FOREIGN KEY (working_id) REFERENCES WorkingAnimal(working_id)
);

CREATE TABLE Donkey (
    donkey_id INT AUTO_INCREMENT PRIMARY KEY,
    working_id INT,
    load_capacity INT,
    FOREIGN KEY (working_id) REFERENCES WorkingAnimal(working_id)
);
