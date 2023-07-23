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
-- Make the campaign table
CREATE TABLE CAMPAIGNS (
    cf_id BIGINT NOT NULL PRIMARY KEY,
    contact_id BIGINT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
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
    CONSTRAINT fk_contact FOREIGN KEY (contact_id) REFERENCES CONTACTS(contact_id) ON DELETE CASCADE,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id) ON DELETE CASCADE,
    CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id) REFERENCES SUBCATEGORIES(subcategory_id) ON DELETE CASCADE
);
