-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
    CustID NUMBER(6) PRIMARY KEY,
    CustName VARCHAR2(20),
    Address VARCHAR2(30),
    Phone NUMBER(12)
);

-- Create PRODUCT table
CREATE TABLE PRODUCT (
    ProdID NUMBER(6) PRIMARY KEY,
    ProdName VARCHAR2(20),
    Price NUMBER(8,2),
    QtyInStock NUMBER(4)
);

-- Create ORDERS table
CREATE TABLE ORDERS (
    OrderID NUMBER(6) PRIMARY KEY,
    CustID NUMBER(6),
    OrderDate DATE DEFAULT SYSDATE,
    CONSTRAINT fk_customer FOREIGN KEY (CustID) REFERENCES CUSTOMER(CustID)
);

-- Create ORDER_DETAILS table
CREATE TABLE ORDER_DETAILS (
    OrderID NUMBER(6),
    ProdID NUMBER(6),
    Qty NUMBER(3),
    CONSTRAINT pk_order_details PRIMARY KEY (OrderID, ProdID),
    CONSTRAINT fk_order FOREIGN KEY (OrderID) REFERENCES ORDERS(OrderID),
    CONSTRAINT fk_product FOREIGN KEY (ProdID) REFERENCES PRODUCT(ProdID)
);

-- Add Category column to PRODUCT table
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

-- Add OrderDate column to ORDERS table (Note: We already included it in the initial table creation)
-- If the table was created without OrderDate, you would use:
-- ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;
