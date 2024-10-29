USE itm_task021_spring_security_task_3_1_2_db;

CREATE TABLE users_3 (
                         id BIGINT PRIMARY KEY,       -- Поле id с автоинкрементом (эквивалент LONG в Java)
                         name VARCHAR(50) NOT NULL,      -- Поле name с максимальной длиной 50 символов
                         password VARCHAR(70) NOT NULL,  -- Поле lastName с максимальной длиной 70 символов
                         role VARCHAR(70)            -- Поле age, хранящее возраст как целое число
);

INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (1, 'user', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_USER'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (2, 'user1', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_USER'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (3, 'user2', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_USER'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (4, 'admin', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_ADMIN'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (id, name, password, role) VALUES (5, 'admin2', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_ADMIN'); # password = '1234'

SELECT * FROM users_3;