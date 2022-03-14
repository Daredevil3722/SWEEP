CREATE USER 'admin_SWEEP'@'localhost' IDENTIFIED BY 'admin@password@SWEEP';
DROP DATABASE IF EXISTS SWEEP;
CREATE DATABASE SWEEP;
GRANT ALL PRIVILEGES ON SWEEP.* TO 'admin_SWEEP'@'localhost';
FLUSH PRIVILEGES;


USE SWEEP;
CREATE TABLE login_details(
    username VARCHAR(50),
    password VARCHAR(100),
    email_or_fcbk VARCHAR(100),
    phone_number VARCHAR(10),
    PRIMARY KEY(username)
);
