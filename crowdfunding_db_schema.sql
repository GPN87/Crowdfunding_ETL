CREATE TABLE contacts(
contact_id INT PRIMARY KEY,
first_name VARCHAR(24) NOT NULL,
last_name VARCHAR(24) NOT NULL,
email VARCHAR
);

SELECT * FROM contacts;

CREATE TABLE category(
category_id VARCHAR(4) PRIMARY KEY,
category VARCHAR(24) NOT NULL
);

SELECT * FROM category;

CREATE TABLE subcategory(
subcategory_id VARCHAR(10) PRIMARY KEY,
subcategory VARCHAR NOT NULL
);

SELECT * FROM subcategory;

CREATE TABLE campaign(
cd_id INT PRIMARY KEY,
contact_id INT NOT NULL,
company_name VARCHAR NOT NULL,
description VARCHAR NOT NULL,
goal FLOAT NOT NULL,
pledged FLOAT NOT NULL,
outcome VARCHAR(20) NOT NULL,
backers_count INT NOT NULL,
country VARCHAR(4) NOT NULL,
currency VARCHAR(4) NOT NULL,
launch_date DATE NOT NULL,
end_date DATE NOT NULL,
category_id VARCHAR(4) NOT NULL,
subcategory_id VARCHAR(10) NOT NULL,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;