-- if table exists, drop table so we can make new ones

DROP TABLE IF EXISTS CATEGORY
DROP TABLE IF EXISTS SUBCATEGORY
DROP TABLE IF EXISTS CONTACTS
DROP TABLE IF EXISTS CAMPAIGN


-- Make the category table

CREATE TABLE CATEGORIES (
    category_id VARCHAR (10) NOT NULL,
    category VARCHAR (100) NOT NULL,
        PRIMARY KEY (category_id)
);

-- Make the subcategory table

CREATE TABLE SUBCATEGORIES (
    subcategory_id VARCHAR (10) NOT NULL,
    subcategory VARCHAR (100) NOT NULL,
        PRIMARY KEY (subcategory_id)
);

-- Make the contacts table

CREATE TABLE CONTACTS (
    contact_id BIGINT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
        PRIMARY KEY(contact_id)
)

-- Make the campaign table

CREATE TABLE CAMPAIGNS (
    cf_id BIGINT NOT NULL,
    contact_id BIGINT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    'description' TEXT NOT NULL, 
    goal NUMERIC(17, 2) NOT NULL,
    pledged NUMERIC(17, 2) NOT NULL,
    outcome VARCHAR(11) NOT NULL,
    backer_count BIGINT NOT NULL,
    country VARCHAR(3) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR (10) NOT NULL,
    subcategory_id VARCHAR (10) NOT NULL,
        PRIMARY KEY (cf_id),
        FOREIGN KEY (contact_id) REFERENCES CONTACTS(contact_id),
        FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id),
        FOREIGN KEY (subcategory_id) REFERENCES SUBCATEGORIES(subcategory_id)
)

----- TABLE SELECTION QUERIES ---------------------

select * from campaign;

select * from category;

select * from subcategory;

select * from contacts;

select count(DISTINCT contact_id) from campaign;

select ca.cf_id, ca.contact_id, co.email, co.first_name, co.last_name
from campaign ca 
join contacts co
on ca.contact_id = co.contact_id;

select ca.cf_id, ca.category_id, ct.category
from campaign ca 
join category ct
on ca.category_id = ct.category_id;

select ca.cf_id, ca.subcategory_id, sc.subcategory
from campaign ca 
join subcategory sc
on ca.subcategory_id = sc.subcategory_id
