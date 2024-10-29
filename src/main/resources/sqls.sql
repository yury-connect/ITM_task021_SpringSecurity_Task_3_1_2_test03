USE itm_task021_spring_security_task_3_1_2_db;

CREATE TABLE users_3 (
                         user_id BIGINT PRIMARY KEY,         -- Поле id с автоинкрементом (эквивалент LONG в Java)
                         user_name VARCHAR(50) NOT NULL,     -- Поле name с максимальной длиной 50 символов
                         user_password VARCHAR(70) NOT NULL, -- Поле password с максимальной длиной 70 символов
                         user_role VARCHAR(70)               -- Поле role, хранящее роли
);

INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (user_id, user_name, user_password, user_role) VALUES (1, 'user', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_USER'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (user_id, user_name, user_password, user_role) VALUES (2, 'user1', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_USER'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (user_id, user_name, user_password, user_role) VALUES (3, 'user2', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_USER'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (user_id, user_name, user_password, user_role) VALUES (4, 'admin', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_ADMIN'); # password = '1234'
INSERT INTO itm_task021_spring_security_task_3_1_2_db.users_3 (user_id, user_name, user_password, user_role) VALUES (5, 'admin2', '$2a$05$ppC7GcE5CtLHvX2gUHMFpeK7wpKf7Kdzfxp55b/.bEBZxDT9H7oe.', 'ROLE_ADMIN'); # password = '1234'

SELECT * FROM users_3;

DROP TABLE IF EXISTS users_3;