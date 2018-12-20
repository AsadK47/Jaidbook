-- #Development database:
CREATE DATABASE pg_jaid_dev;
CREATE TABLE posts(id SERIAL PRIMARY KEY, title varchar, body varchar, created_at date, updated_at date, username varchar, email varchar, user_id int);
CREATE TABLE users(id SERIAL PRIMARY KEY, email varchar, encrypted_password varchar, reset_password_token varchar, reset_password_sent_at varchar, remember_created_at date, created_at date, updated_at date, user_id int);
