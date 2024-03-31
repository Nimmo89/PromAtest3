-- Заполнение таблицы Animal
INSERT INTO Animal (animal_type) VALUES ('Domestic');
INSERT INTO Animal (animal_type) VALUES ('Working');

-- Заполнение таблицы DomesticAnimal
INSERT INTO DomesticAnimal (animal_id, name, command, birth_date)
SELECT 
    animal_id, 
    CONCAT('Dog', domestic_id) AS name,
    CONCAT('Fetch command ', domestic_id) AS command, -- Получение команды
    DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND()*365) DAY) AS birth_date
FROM Animal WHERE animal_type = 'Domestic';

-- Заполнение таблицы Dog
INSERT INTO Dog (domestic_id, breed)
SELECT 
    domestic_id, 
    CONCAT('Breed', domestic_id) AS breed -- Порода
FROM DomesticAnimal;

INSERT INTO DomesticAnimal (animal_id, name, command, birth_date)
SELECT 
    animal_id, 
    CONCAT('Cat', domestic_id) AS name, 
    CONCAT('Meow command ', domestic_id) AS command, -- Команда "Мяу"
    DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND()*365) DAY) AS birth_date
FROM Animal WHERE animal_type = 'Domestic';

-- Заполнение таблицы Cat
INSERT INTO Cat (domestic_id, breed)
SELECT 
    domestic_id, 
    CONCAT('Breed', domestic_id) AS breed -- Порода
FROM DomesticAnimal;

INSERT INTO DomesticAnimal (animal_id, name, command, birth_date)
SELECT 
    animal_id, 
    CONCAT('Hamster', domestic_id) AS name, 
    CONCAT('Run command ', domestic_id) AS command, -- Команда "Бежать"
    DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND()*365) DAY) AS birth_date
FROM Animal WHERE animal_type = 'Domestic';

-- Заполнение таблицы Hamster
INSERT INTO Hamster (domestic_id, color)
SELECT 
    domestic_id, 
    CONCAT('Color', domestic_id) AS color -- Цвет хомяка
FROM DomesticAnimal;

-- Заполнение таблицы WorkingAnimal
INSERT INTO WorkingAnimal (animal_id, name, command, birth_date)
SELECT 
    animal_id, 
    CONCAT('Horse', working_id) AS name, 
    CONCAT('Gallop command ', working_id) AS command, -- Команда "Галопом"
    DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND()*365) DAY) AS birth_date
FROM Animal WHERE animal_type = 'Working';

-- Заполнение таблицы Horse
INSERT INTO Horse (working_id, color)
SELECT 
    working_id, 
    CONCAT('Breed', working_id) AS breed -- Порода 
FROM WorkingAnimal;

INSERT INTO WorkingAnimal (animal_id, name, command, birth_date)
SELECT 
    animal_id, 
    CONCAT('Camel', working_id) AS name, 
    CONCAT('Caravan command ', working_id) AS command, -- Команда "Следовать"
    DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND()*365) DAY) AS birth_date
FROM Animal WHERE animal_type = 'Working';

-- Заполнение таблицы Camel
INSERT INTO Camel (working_id, hump_number)
SELECT 
    working_id, 
    FLOOR(RAND()*3) AS hump_number
FROM WorkingAnimal;

INSERT INTO WorkingAnimal (animal_id, name, command, birth_date)
SELECT 
    animal_id, 
    CONCAT('Donkey', working_id) AS name, 
    CONCAT('Carry command ', working_id) AS command, -- Команда "Нести"
    DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND()*365) DAY) AS birth_date
FROM Animal WHERE animal_type = 'Working';

-- Заполнение таблицы Donkey
INSERT INTO Donkey (working_id, load_capacity)
SELECT 
    working_id, 
    FLOOR(RAND()*200) AS load_capacity
FROM WorkingAnimal;
