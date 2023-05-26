
CREATE TABLE campaign (
    cf_id VARCHAR (10) NOT NULL,
    contact_id VARCHAR (10) NOT NULL,
    company_name VARCHAR (65),
    descrption VARCHAR (255),
    goal NUMERIC (10,2),
    pledged NUMERIC (10,2),
    outcome VARCHAR (65),
    backers_count INTEGER,
    country VARCHAR (65),
    currency VARCHAR (65),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR (10),
    subcategory_id VARCHAR (10),
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);

CREATE TABLE category (
    category_id VARCHAR (10) NOT NULL,
    category VARCHAR (65) NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR (10) NOT NULL,
    subcategory VARCHAR (65) NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contacts (
    contact_id VARCHAR (10) NOT NULL,
    first_name VARCHAR (65) NOT NULL,
    last_name VARCHAR (65) NOT NULL,
    email VARCHAR (65) NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);
