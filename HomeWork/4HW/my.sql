#create db
CREATE DATABASE IF NOT EXISTS gb_hw;
USE gb_hw;

# create table
CREATE TABLE IF NOT EXISTS students
(
    id      INT PRIMARY KEY NOT NULL,
    name    VARCHAR(100)    NOT NULL,
    age     INT1            NOT NULL,
    address VARCHAR(100)    NOT NULL
);

# insert
INSERT IGNORE INTO students (id, name, age, address)
VALUES (1, 'Михаил', 27, 'Новосибирск'),
       (2, 'Роман', 23, 'Санкт-Петербург'),
       (3, 'Дмитрий', 43, 'Нижний Новгород'),
       (4, 'Николай', 27, 'Новосибирск'),
       (5, 'Владимир', 29, 'Саратов'),
       (6, 'Андрей', 19, 'Новосибирск'),
       (7, 'Антон', 28, 'Новосибирск'),
       (8, 'Константин', 24, 'Астрахань'),
       (9, 'Павел', 56, 'Новосибирск'),
       (10, 'Сергей', 21, 'Красноярск')
;

# select
SELECT name
FROM students
WHERE address LIKE '%Новосибирск%'
  AND age BETWEEN 18 AND 29
ORDER BY name;