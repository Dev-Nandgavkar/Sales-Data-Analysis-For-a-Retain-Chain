-- MySQL Workbench 8.0 

-- Created new database to load csv files from local system
-- Dataset Link -> https://www.kaggle.com/datasets/regivm/retailtransactiondata

CREATE DATABASE Project;
USE Project;

CREATE TABLE transactions(
	customer_id VARCHAR(255),
    trs_time DATETIME,
    trs_amount INT
);

CREATE TABLE responses(
	customer_id VARCHAR(255),
    cst_response INT
);

SELECT * FROM transactions;
SELECT * FROM responses;
ALTER TABLE transactions MODIFY trs_time VARCHAR(255);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
INTO TABLE responses
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;