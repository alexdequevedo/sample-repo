-- tables
-- Table: call
CREATE TABLE call (
    id int  NOT NULL IDENTITY(1, 1),
    employee_id int  NOT NULL,
    customer_id int  NOT NULL,
    start_time datetime  NOT NULL,
    end_time datetime  NULL,
    call_outcome_id int  NULL,
    CONSTRAINT call_ak_1 UNIQUE (employee_id, start_time),
    CONSTRAINT call_pk PRIMARY KEY  (id)
);

-- Table: call_outcome
CREATE TABLE call_outcome (
    id int  NOT NULL IDENTITY(1, 1),
    outcome_text char(128)  NOT NULL,
    CONSTRAINT call_outcome_ak_1 UNIQUE (outcome_text),
    CONSTRAINT call_outcome_pk PRIMARY KEY  (id)
);

-- Table: customer
CREATE TABLE customer (
    id int  NOT NULL IDENTITY(1, 1),
    customer_name varchar(255)  NOT NULL,
    city_id int  NOT NULL,
    customer_address varchar(255)  NOT NULL,
    next_call_date date  NULL,
    ts_inserted datetime  NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY  (id)
);

-- Table: employee
CREATE TABLE employee (
    id int  NOT NULL IDENTITY(1, 1),
    first_name varchar(255)  NOT NULL,
    last_name varchar(255)  NOT NULL,
    CONSTRAINT employee_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: call_call_outcome (table: call)
ALTER TABLE call ADD CONSTRAINT call_call_outcome
    FOREIGN KEY (call_outcome_id)
    REFERENCES call_outcome (id);

-- Reference: call_customer (table: call)
ALTER TABLE call ADD CONSTRAINT call_customer
    FOREIGN KEY (customer_id)
    REFERENCES customer (id);

-- Reference: call_employee (table: call)
ALTER TABLE call ADD CONSTRAINT call_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (id);

-- Reference: customer_city (table: customer)
ALTER TABLE customer ADD CONSTRAINT customer_city
    FOREIGN KEY (city_id)
    REFERENCES city (id);