CREATE TABLE dwt_branch_6.customer (
    ccode     NUMBER(10) NOT NULL,
    firstname VARCHAR2(30 BYTE),
    surname   VARCHAR2(30 BYTE),
    str_no    VARCHAR2(60 BYTE),
    zip_place VARCHAR2(50 BYTE),
    gender    NUMBER(1),
    bday      DATE
)

CREATE TABLE dwt_branch_6.orders (
    idc    NUMBER(13) NOT NULL,
    kc     NUMBER(10) NOT NULL,
    "DATE" DATE NOT NULL,
    amount NUMBER(3) NOT NULL
)

CREATE TABLE dwt_branch_6.product (
    idcode   NUMBER(13) NOT NULL,
    name_vol VARCHAR2(50 BYTE),
    price    NUMBER(3, 2) NOT NULL,
    unit     VARCHAR2(20 BYTE)
)

ALTER TABLE dwt_branch_6.customer
    ADD CONSTRAINT customer_pk PRIMARY KEY ( ccode );

ALTER TABLE dwt_branch_6.orders
    ADD CONSTRAINT orders_pk PRIMARY KEY ( idc,kc );

ALTER TABLE dwt_branch_6.orders
    ADD FOREIGN KEY ( idc )
        REFERENCES dwt_branch_6.product ( idcode );

ALTER TABLE dwt_branch_6.product
    ADD CONSTRAINT product_pk PRIMARY KEY ( idcode );