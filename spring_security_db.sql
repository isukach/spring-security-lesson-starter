CREATE SCHEMA IF NOT EXISTS spring_security_db;
USE spring_security_db;

CREATE TABLE users (id BIGINT AUTO_INCREMENT, name VARCHAR(40) NOT NULL UNIQUE, password VARCHAR(30), PRIMARY KEY (id));
CREATE TABLE roles (id BIGINT AUTO_INCREMENT, name VARCHAR(15) NOT NULL UNIQUE , PRIMARY KEY (id));
CREATE TABLE users_roles (user_id BIGINT, role_id BIGINT, PRIMARY KEY (user_id, role_id),
  FOREIGN KEY (user_id) REFERENCES users(id), FOREIGN KEY (role_id) REFERENCES roles(id));

INSERT INTO users (name, password) VALUES ('User', 'password');
INSERT INTO users (name, password) VALUES ('Admin', 'password');
INSERT INTO roles (name) VALUES ('USER');
INSERT INTO roles (name) VALUES ('ADMIN');
INSERT INTO users_roles (user_id, role_id) VALUES (1, 1);
INSERT INTO users_roles (user_id, role_id) VALUES (2, 2);