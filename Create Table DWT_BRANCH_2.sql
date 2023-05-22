CREATE TABLE dwt_branch_2.buys (
    cnumber NUMBER(10) NOT NULL,
    pnumber NUMBER(10) NOT NULL,
    amount  VARCHAR2(5 BYTE) NOT NULL,
    "DATE"  DATE NOT NULL
)

CREATE TABLE dwt_branch_2.customer (
    num       NUMBER(12) NOT NULL,
    lastname  VARCHAR2(50 BYTE) NOT NULL,
    firstname VARCHAR2(50 BYTE),
    placeid   NUMBER(5),
    bday      DATE
)

CREATE TABLE dwt_branch_2.place (
    plid      NUMBER(5) NOT NULL,
    str_no    VARCHAR2(70 BYTE),
    zip_place VARCHAR2(100 BYTE) NOT NULL
)

CREATE TABLE dwt_branch_2.product (
    num   NUMBER(12) NOT NULL,
    label VARCHAR2(40 BYTE) NOT NULL,
    type  VARCHAR2(30 BYTE) NOT NULL,
    liter NUMBER(3, 2) NOT NULL,
    price VARCHAR2(10 BYTE) NOT NULL
)

ALTER TABLE dwt_branch_2.buys
    ADD CONSTRAINT buys_pk PRIMARY KEY ( cnumber,pnumber,amount,"DATE" );

ALTER TABLE dwt_branch_2.customer
    ADD CONSTRAINT customer_pk PRIMARY KEY ( num );
ALTER TABLE dwt_branch_2.customer
    ADD CONSTRAINT customer__un UNIQUE ( lastname, firstname );


ALTER TABLE dwt_branch_2.product
    ADD CONSTRAINT product_pk PRIMARY KEY ( num );

ALTER TABLE dwt_branch_2.place
    ADD CONSTRAINT place_pk PRIMARY KEY ( plid );