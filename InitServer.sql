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

CREATE TABLE net_banking(
    username VARCHAR(50),
    cost INT,
    account_number INT,
    CIF_number INT,
    branch_code INT,
    flat_number INT,
    PRIMARY KEY(username)
);

CREATE TABLE upi(
    username VARCHAR(50) PRIMARY KEY,
    cost INT,
    UPI_ID INT,
    flat_number INT,
    PRIMARY KEY(username)
);

CREATE TABLE paytm(
    username VARCHAR(50),
    cost INT,
    paytm_ID INT,
    flat_number INT,
    PRIMARY KEY(username)
);
