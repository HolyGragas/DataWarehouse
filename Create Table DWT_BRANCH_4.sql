CREATE TABLE dwt_branch_4.customer (
    custumernumber NUMBER(10) NOT NULL,
    name           VARCHAR2(30 BYTE) NOT NULL,
    firstname      VARCHAR2(30 BYTE) NOT NULL,
    street_no      VARCHAR2(40 BYTE),
    zip            NUMBER(5),
    place          VARCHAR2(30 BYTE),
    gender         CHAR(1 BYTE),
    bday           DATE
)

CREATE TABLE dwt_branch_4."ORDER" (
    orderid NUMBER(13) NOT NULL,
    cid     NUMBER(10) NOT NULL,
    "DATE"  DATE NOT NULL
)

CREATE TABLE dwt_branch_4.sort (
    sortnumber NUMBER(3) NOT NULL,
    name       VARCHAR2(25 BYTE)
)

CREATE TABLE dwt_branch_4.product (
    productnumber NUMBER(12) NOT NULL,
    name          VARCHAR2(30 BYTE) NOT NULL,
    sid           NUMBER(5) NOT NULL,
    "SIZE"        VARCHAR2(20 BYTE),
    price         NUMBER(3, 2) NOT NULL
)

ALTER TABLE dwt_branch_4.customer
    ADD CONSTRAINT customer_pk PRIMARY KEY ( custumernumber );

ALTER TABLE dwt_branch_4.sort
    ADD CONSTRAINT sort_pk PRIMARY KEY ( sortnumber );

ALTER TABLE dwt_branch_4.product
    ADD CONSTRAINT product_pk PRIMARY KEY ( productnumber );
    
ALTER TABLE dwt_branch_4."ORDER"
    ADD CONSTRAINT order_pk PRIMARY KEY ( orderid );