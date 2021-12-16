-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-14 16:54:12.41

-- tables
-- Table: consumer
CREATE TABLE consumer (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    phone varchar(15) NOT NULL,
    CONSTRAINT consumer_pk PRIMARY KEY (id)
);

-- Table: owner
CREATE TABLE owner (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    passode int NOT NULL,
    CONSTRAINT owner_pk PRIMARY KEY (id)
);

-- Table: product
CREATE TABLE product (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    quantity int NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (id)
);

-- Table: sale
CREATE TABLE sale (
    id int NOT NULL,
    store_id int NOT NULL,
    product_id int NOT NULL,
    consumer_id int NOT NULL,
    salesman_id int NOT NULL,
    price varchar(100) NOT NULL,
    CONSTRAINT sale_pk PRIMARY KEY (id)
);

-- Table: salesman
CREATE TABLE salesman (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    address varchar(100) NOT NULL,
    CONSTRAINT salesman_pk PRIMARY KEY (id)
);

-- Table: store
CREATE TABLE store (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    code varchar(100) NOT NULL,
    owner_id int NOT NULL,
    CONSTRAINT store_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: sale_consumer (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_consumer FOREIGN KEY sale_consumer (consumer_id)
    REFERENCES consumer (id);

-- Reference: sale_product (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_product FOREIGN KEY sale_product (product_id)
    REFERENCES product (id);

-- Reference: sale_salesman (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_salesman FOREIGN KEY sale_salesman (salesman_id)
    REFERENCES salesman (id);

-- Reference: sale_store (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_store FOREIGN KEY sale_store (store_id)
    REFERENCES store (id);

-- Reference: store_owner (table: store)
ALTER TABLE store ADD CONSTRAINT store_owner FOREIGN KEY store_owner (owner_id)
    REFERENCES owner (id);

-- End of file.

