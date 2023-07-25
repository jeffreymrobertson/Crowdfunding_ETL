-- Make the category table
CREATE TABLE CATEGORIES (
    category_id VARCHAR(10) NOT NULL PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);
-- Make the subcategory table
CREATE TABLE SUBCATEGORIES (
    subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(100) NOT NULL
);
-- Make the contacts table
CREATE TABLE CONTACTS (
    contact_id BIGINT NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
-- Make the campaigns table
CREATE TABLE CAMPAIGNS (
    cf_id BIGINT NOT NULL PRIMARY KEY,
    contact_id BIGINT NOT NULL REFERENCES CONTACTS(contact_id),
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal NUMERIC(17, 2) NOT NULL CHECK (goal >= 0),
    pledged NUMERIC(17, 2) NOT NULL CHECK (pledged >= 0),
    outcome VARCHAR(11) NOT NULL,
    backer_count BIGINT NOT NULL CHECK (backer_count >= 0),
    country VARCHAR(3) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR (10) NOT NULL REFERENCES CATEGORIES(category_id),
    subcategory_id VARCHAR (10) NOT NULL REFERENCES SUBCATEGORIES(subcategory_id)
);

SELECT * FROM CATEGORIES;

SELECT * FROM SUBCATEGORIES;

SELECT * FROM CONTACTS;

SELECT * FROM CAMPAIGNS;
