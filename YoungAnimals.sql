-- Создание новой таблицы "молодые животные"
CREATE TABLE YoungAnimals (
    animal_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_type VARCHAR(50),
    name VARCHAR(50),
    command VARCHAR(100),
    birth_date DATE,
    age_months INT
);

-- Заполнение таблицы "молодые животные" данными о животных старше 1 года и младше 3 лет
INSERT INTO YoungAnimals (animal_type, name, command, birth_date, age_months)
SELECT 
    animal_type,
    name,
    command,
    birth_date,
    TIMESTAMPDIFF(MONTH, birth_date, CURDATE()) AS age_months
FROM
    (
        SELECT 
            animal_type,
            name,
            command,
            birth_date
        FROM 
            DomesticAnimal
        UNION ALL
        SELECT 
            animal_type,
            name,
            command,
            birth_date
        FROM 
            WorkingAnimal
    ) AS all_animals
WHERE 
    TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) > 1
    AND TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) < 3;