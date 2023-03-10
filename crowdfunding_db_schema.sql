-- create database called crowdfunding_db
CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- create Category table
CREATE TABLE Category(
	category_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR(12) NOT NULL);
	
-- Check Category table
SELECT * FROM Category;
	
-- create Subcategory table
CREATE TABLE Subcategory(
	subcategory_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(20) NOT NULL);
	
-- Check Subcategory table
SELECT * FROM Subcategory;

-- create Contacts table
CREATE TABLE Contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(15) NOT NULL,
	last_name VARCHAR(15) NOT NULL,
	email VARCHAR(60));
	
-- Check Contact
SELECT * FROM Contacts LIMIT 100;

-- create Campaign table
CREATE TABLE Campaign(
	cf_id SERIAL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR(40) NOT NULL,
	description VARCHAR,
	goal DECIMAL(10,2),
	pledged DECIMAL(10,2),
	outcome VARCHAR(10),
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	category_id Varchar(4) NOT NULL, 
	subcategory_id Varchar(8) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id));
	
-- Check Campaign
SELECT * FROM Campaign LIMIT 100;

	
-- Testing join tables
SELECT C.company_name, C.country, cat.category, sub.subcategory, con.first_name, con.last_name
FROM Campaign AS C
INNER JOIN Category AS cat ON cat.category_id = C.category_id
INNER JOIN Subcategory AS sub ON sub.subcategory_id = C.subcategory_id
INNER JOIN Contacts As con ON con.contact_id = C.contact_id
