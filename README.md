# SQL Database Schema - Order Management System

This repository contains SQL scripts for creating and managing a relational database for an order management system.

## Database Structure

The database consists of the following tables:

1. **CUSTOMER**
   - CustID (Primary Key)
   - CustName
   - Address
   - Phone

2. **PRODUCT**
   - ProdID (Primary Key)
   - ProdName
   - Price
   - QtyInStock
   - Category

3. **ORDERS**
   - OrderID (Primary Key)
   - CustID (Foreign Key)
   - OrderDate

4. **ORDER_DETAILS**
   - OrderID (Primary Key, Foreign Key)
   - ProdID (Primary Key, Foreign Key)
   - Qty

## Features

- Complete table creation scripts with appropriate data types
- Primary and Foreign key constraints
- Default values for specific columns
- Referential integrity implementation
