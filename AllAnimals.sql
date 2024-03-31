-- Создание новой таблицы для объединенных данных
CREATE TABLE AllAnimals (
    animal_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_type VARCHAR(50),
    name VARCHAR(50),
    command VARCHAR(100),
    birth_date DATE,
    age_months INT,
    breed VARCHAR(50),
    color VARCHAR(50),
    hump_number INT,
    load_capacity INT,
    previous_table VARCHAR(50)
);

-- Вставка данных из таблицы DomesticAnimal
INSERT INTO AllAnimals (animal_type, name, command, birth_date, age_months, previous_table)
SELECT 'Domestic', name, command, birth_date, age_months, NULL, NULL, NULL, NULL, 'DomesticAnimal'
FROM DomesticAnimal;

-- Вставка данных из таблицы WorkingAnimal
INSERT INTO AllAnimals (animal_type, name, command, birth_date, age_months, previous_table)
SELECT 'Working', name, command, birth_date, age_months, NULL, NULL, NULL, NULL, 'WorkingAnimal'
FROM WorkingAnimal;

-- Вставка данных из таблицы Dog
INSERT INTO AllAnimals (animal_type, name, command, birth_date, age_months, breed, previous_table)
SELECT 'Domestic', name, command, birth_date, age_months, breed, 'Dog'
FROM Dog;

-- Вставка данных из таблицы Cat
INSERT INTO AllAnimals (animal_type, name, command, birth_date, age_months, breed, previous_table)
SELECT 'Domestic', name, command, birth_date, age_months, breed, 'Cat'
FROM Cat;

-- Вставка данных из таблицы Hamster
INSERT INTO AllAnimals (animal_type, name, command, birth_date, age_months, color, previous_table)
SELECT 'Domestic', name, command, birth_date, age_months, color, 'Hamster'
FROM Hamster;

-- Вставка данных из таблицы Horse
INSERT INTO AllAnimals (animal_type, name, command, birth_date, age_months, color, previous_table)
SELECT 'Working', name, command, birth_date, age_months, color, 'Horse'
FROM Horse;

-- Вставка данных из таблицы Donkey
INSERT INTO AllAnimals (animal_type, name, command, birth_date, age_months, load_capacity, previous_table)
SELECT 'Working', name, command, birth_date, age_months, load_capacity, 'Donkey'
FROM Donkey;
