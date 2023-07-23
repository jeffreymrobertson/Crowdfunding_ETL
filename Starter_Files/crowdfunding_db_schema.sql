--------------- create new tables, columns as per the csv files --------------

DROP table campaign;
DROP table category;
DROP table subcategory;
DROP table contacts;

CREATE TABLE campaign(
	cf_id 			INT				PRIMARY KEY,
	contact_id	 	INT				NOT NULL,
	company_name 	VARCHAR(100),
	description 	VARCHAR(100),
	goal 			FLOAT,
	pledged			FLOAT,
	outcome         VARCHAR(10),
	backers_count   INT,
	country         VARCHAR(10),
	currency        VARCHAR(10),
	launched_date   DATE,
	end_date        DATE,
	category_id     VARCHAR(20),
	subcategory_id  VARCHAR(10)
);

CREATE TABLE category(
	category_id		VARCHAR(20)		PRIMARY KEY,
	category		VARCHAR(20)
);

CREATE TABLE subcategory(
	subcategory_id	VARCHAR(20)		PRIMARY KEY,
	subcategory		VARCHAR(20)
);

CREATE TABLE contacts(
	contact_id		INT				PRIMARY KEY,
	first_name		VARCHAR(30),
	last_name		VARCHAR(30),
	email			VARCHAR(50)
);

ALTER TABLE ONLY campaign
    ADD CONSTRAINT camp_contact_fk FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE ONLY campaign
    ADD CONSTRAINT camp_category_fk FOREIGN KEY (category_id) REFERENCES category(category_id) ON UPDATE CASCADE ON DELETE RESTRICT;
	
ALTER TABLE ONLY campaign
    ADD CONSTRAINT camp_subcat_fk FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id) ON UPDATE CASCADE ON DELETE RESTRICT;




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