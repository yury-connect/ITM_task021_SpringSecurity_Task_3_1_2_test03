USE itm_task021_spring_security_task_3_1_2_db;

CREATE TABLE users_3 (
                         id BIGINT PRIMARY KEY,       -- Поле id с автоинкрементом (эквивалент LONG в Java)
                         name VARCHAR(50) NOT NULL,      -- Поле name с максимальной длиной 50 символов
                         password VARCHAR(70) NOT NULL,  -- Поле lastName с максимальной длиной 70 символов
                         role VARCHAR(70)            -- Поле age, хранящее возраст как целое число
);

INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (1, 'user', '1234', 'ADMIN');
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (2, 'user1', '1234', 'ADMIN');
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (3, 'user2', '1234', 'USER');

SELECT * FROM users_3;