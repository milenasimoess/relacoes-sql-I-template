-- Active: 1673874091088@@127.0.0.1@3306


-- Práticas
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);
CREATE TABLE phones (
 id TEXT PRIMARY KEY UNIQUE NOT NULL,
 phone_number TEXT UNIQUE NOT NULL,
 user_id TEXT NOT NULL,
 FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO users (id, name, email, password)
VALUES
   ('u001', 'Milena', 'milena@email.com', 'milena123'),
   ('u002', 'Maria', 'maria@email.com', "maria123");

INSERT INTO phones (id, phone_number, user_id)
VALUES
('p001', '5535998895974', 'u001'),
('p002', '5535991265048', 'u001'),
('p003', '5535999163422', 'u002');

SELECT * FROM users;

SELECT * FROM phones;

SELECT * FROM users
INNER JOIN phones
ON phones.user_id = users.id;


--1/1
CREATE TABLE licenses(
 id TEXT PRIMARY KEY UNIQUE NOT NULL,
 register_number TEXT UNIQUE NOT NULL,
 category TEXT NOT NULL
);

CREATE TABLE drivers (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    license_id TEXT UNIQUE NOT NULL,
    FOREIGN KEY(license_id) REFERENCES licenses(id)
);

INSERT INTO licenses(id, register_number, category)
VALUES
('l001', '111111111111', 'A'),
("l002", '222222222222', 'AB');

INSERT INTO drivers (id, name, email, password, license_id)
VALUES
('d001','Carlos', 'carlos@email.com', 'carlos123', "l001"),
('d002', 'Tais', 'tais@email.com', 'tais123', 'l002');

SELECT * FROM drivers
INNER JOIN licenses
ON drivers.license_id = licenses.id;







