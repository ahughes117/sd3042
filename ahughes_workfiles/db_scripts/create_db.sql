-- Generated by Oracle SQL Developer Data Modeler 3.1.3.706
--   at:        2012-11-16 18:51:15 GMT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE NH_BOOKING 
    ( 
     BookingID INTEGER  NOT NULL , 
     RoomID INTEGER  NOT NULL , 
     EmployeeID INTEGER  NOT NULL , 
     CustomerID INTEGER  NOT NULL , 
     TreatmentID INTEGER  NOT NULL , 
     "Date" DATE  NOT NULL , 
     Price NUMBER 
    ) 
;



ALTER TABLE NH_BOOKING 
    ADD CONSTRAINT Booking_PK PRIMARY KEY ( BookingID ) ;



CREATE TABLE NH_CUSTOMER 
    ( 
     CustomerID INTEGER  NOT NULL , 
     Name VARCHAR2 (20) , 
     Surname VARCHAR2 (20) , 
     Telephone VARCHAR2 (15) 
    ) 
;



ALTER TABLE NH_CUSTOMER 
    ADD CONSTRAINT Customer_PK PRIMARY KEY ( CustomerID ) ;



CREATE TABLE NH_EMPLOYEE 
    ( 
     EmployeeID INTEGER  NOT NULL , 
     ShopID INTEGER  NOT NULL , 
     Name VARCHAR2 (20) , 
     Surname VARCHAR2 (20) , 
     Telephone VARCHAR2 (15) 
    ) 
;



ALTER TABLE NH_EMPLOYEE 
    ADD CONSTRAINT Employee_PK PRIMARY KEY ( EmployeeID ) ;



CREATE TABLE NH_EMPSPEC 
    ( 
     EmployeeID INTEGER  NOT NULL , 
     SpecialtyID INTEGER  NOT NULL , 
     "Date" DATE 
    ) 
;



ALTER TABLE NH_EMPSPEC 
    ADD CONSTRAINT EmpSpec_PK PRIMARY KEY ( EmployeeID, SpecialtyID ) ;



CREATE TABLE NH_INVENTORY 
    ( 
     StockID INTEGER  NOT NULL , 
     TreatmentID INTEGER  NOT NULL 
    ) 
;



ALTER TABLE NH_INVENTORY 
    ADD CONSTRAINT Inventory_PK PRIMARY KEY ( TreatmentID, StockID ) ;



CREATE TABLE NH_ORDER 
    ( 
     OrderID INTEGER  NOT NULL , 
     ShopID INTEGER  NOT NULL , 
     "Date" DATE , 
     Comments VARCHAR2 (100) 
    ) 
;



ALTER TABLE NH_ORDER 
    ADD CONSTRAINT Order_PK PRIMARY KEY ( OrderID ) ;



CREATE TABLE NH_ORDERPRODUCT 
    ( 
     OrderID INTEGER  NOT NULL , 
     ProductID INTEGER  NOT NULL , 
     Quantity INTEGER 
    ) 
;



ALTER TABLE NH_ORDERPRODUCT 
    ADD CONSTRAINT OrderProduct_PK PRIMARY KEY ( OrderID, ProductID ) ;



CREATE TABLE NH_PRODSUP 
    ( 
     ProductID INTEGER  NOT NULL , 
     SupplierID INTEGER  NOT NULL 
    ) 
;



ALTER TABLE NH_PRODSUP 
    ADD CONSTRAINT ProdSup_PK PRIMARY KEY ( ProductID, SupplierID ) ;



CREATE TABLE NH_PRODUCT 
    ( 
     ProductID INTEGER  NOT NULL , 
     Description VARCHAR2 (50) , 
     Price NUMBER 
    ) 
;



ALTER TABLE NH_PRODUCT 
    ADD CONSTRAINT Product_PK PRIMARY KEY ( ProductID ) ;



CREATE TABLE NH_ROOM 
    ( 
     RoomID INTEGER  NOT NULL , 
     ShopID INTEGER  NOT NULL , 
     Name VARCHAR2 (20) , 
     Description VARCHAR2 (50) 
    ) 
;



ALTER TABLE NH_ROOM 
    ADD CONSTRAINT Room_PK PRIMARY KEY ( RoomID ) ;



CREATE TABLE NH_SHOP 
    ( 
     ShopID INTEGER  NOT NULL , 
     Name VARCHAR2 (20) , 
     Address VARCHAR2 (20) , 
     ZipCode VARCHAR2 (10) , 
     ManagerID INTEGER  NOT NULL 
    ) 
;



ALTER TABLE NH_SHOP 
    ADD CONSTRAINT Shop_PK PRIMARY KEY ( ShopID ) ;



CREATE TABLE NH_SPECIALTY 
    ( 
     SpecialtyID INTEGER  NOT NULL , 
     Description VARCHAR2 (50) 
    ) 
;



ALTER TABLE NH_SPECIALTY 
    ADD CONSTRAINT Specialty_PK PRIMARY KEY ( SpecialtyID ) ;



CREATE TABLE NH_STOCK 
    ( 
     StockID INTEGER  NOT NULL , 
     ShopID INTEGER  NOT NULL , 
     ProductID INTEGER  NOT NULL , 
     Quantity INTEGER 
    ) 
;



ALTER TABLE NH_STOCK 
    ADD CONSTRAINT Stock_PK PRIMARY KEY ( StockID ) ;



CREATE TABLE NH_SUPPLIER 
    ( 
     SupplierID INTEGER  NOT NULL , 
     Company VARCHAR2 (50) , 
     Name VARCHAR2 (50)  NOT NULL , 
     Surname VARCHAR2 (50)  NOT NULL , 
     Telephone VARCHAR2 (15) 
    ) 
;



ALTER TABLE NH_SUPPLIER 
    ADD CONSTRAINT Supplier_PK PRIMARY KEY ( SupplierID ) ;



CREATE TABLE NH_SUPSHOP 
    ( 
     SupplierID INTEGER  NOT NULL , 
     ShopID INTEGER  NOT NULL 
    ) 
;



ALTER TABLE NH_SUPSHOP 
    ADD CONSTRAINT SupShop_PK PRIMARY KEY ( SupplierID, ShopID ) ;



CREATE TABLE NH_TREATMENT 
    ( 
     TreatmentID INTEGER  NOT NULL , 
     Description VARCHAR2 (20) , 
     Price NUMBER 
    ) 
;



ALTER TABLE NH_TREATMENT 
    ADD CONSTRAINT Treatment_PK PRIMARY KEY ( TreatmentID ) ;




ALTER TABLE NH_BOOKING 
    ADD CONSTRAINT Booking_Customer_FK FOREIGN KEY 
    ( 
     CustomerID
    ) 
    REFERENCES NH_CUSTOMER 
    ( 
     CustomerID
    ) 
;


ALTER TABLE NH_BOOKING 
    ADD CONSTRAINT Booking_Employee_FK FOREIGN KEY 
    ( 
     EmployeeID
    ) 
    REFERENCES NH_EMPLOYEE 
    ( 
     EmployeeID
    ) 
;


ALTER TABLE NH_BOOKING 
    ADD CONSTRAINT Booking_Room_FK FOREIGN KEY 
    ( 
     RoomID
    ) 
    REFERENCES NH_ROOM 
    ( 
     RoomID
    ) 
;


ALTER TABLE NH_BOOKING 
    ADD CONSTRAINT Booking_Treatment_FK FOREIGN KEY 
    ( 
     TreatmentID
    ) 
    REFERENCES NH_TREATMENT 
    ( 
     TreatmentID
    ) 
;


ALTER TABLE NH_EMPSPEC 
    ADD CONSTRAINT EmpSpec_Employee_FK FOREIGN KEY 
    ( 
     EmployeeID
    ) 
    REFERENCES NH_EMPLOYEE 
    ( 
     EmployeeID
    ) 
;


ALTER TABLE NH_EMPSPEC 
    ADD CONSTRAINT EmpSpec_Specialty_FK FOREIGN KEY 
    ( 
     SpecialtyID
    ) 
    REFERENCES NH_SPECIALTY 
    ( 
     SpecialtyID
    ) 
;


ALTER TABLE NH_EMPLOYEE 
    ADD CONSTRAINT Employee_Shop_FK FOREIGN KEY 
    ( 
     ShopID
    ) 
    REFERENCES NH_SHOP 
    ( 
     ShopID
    ) 
;


ALTER TABLE NH_INVENTORY 
    ADD CONSTRAINT Inventory_Stock_FK FOREIGN KEY 
    ( 
     StockID
    ) 
    REFERENCES NH_STOCK 
    ( 
     StockID
    ) 
;


ALTER TABLE NH_INVENTORY 
    ADD CONSTRAINT Inventory_Treatment_FK FOREIGN KEY 
    ( 
     TreatmentID
    ) 
    REFERENCES NH_TREATMENT 
    ( 
     TreatmentID
    ) 
;


-- Error - Foreign Key NH_TREATMENT_NH_SPECIALTY_FK has no columns

ALTER TABLE NH_ORDERPRODUCT 
    ADD CONSTRAINT OrderProduct_Product_FK FOREIGN KEY 
    ( 
     ProductID
    ) 
    REFERENCES NH_PRODUCT 
    ( 
     ProductID
    ) 
;


ALTER TABLE NH_ORDER 
    ADD CONSTRAINT Order_Shop_FK FOREIGN KEY 
    ( 
     ShopID
    ) 
    REFERENCES NH_SHOP 
    ( 
     ShopID
    ) 
;


ALTER TABLE NH_PRODSUP 
    ADD CONSTRAINT ProdSup_Product_FK FOREIGN KEY 
    ( 
     ProductID
    ) 
    REFERENCES NH_PRODUCT 
    ( 
     ProductID
    ) 
;


ALTER TABLE NH_PRODSUP 
    ADD CONSTRAINT ProdSup_Supplier_FK FOREIGN KEY 
    ( 
     SupplierID
    ) 
    REFERENCES NH_SUPPLIER 
    ( 
     SupplierID
    ) 
;


ALTER TABLE NH_ROOM 
    ADD CONSTRAINT Room_Shop_FK FOREIGN KEY 
    ( 
     ShopID
    ) 
    REFERENCES NH_SHOP 
    ( 
     ShopID
    ) 
;


ALTER TABLE NH_SHOP 
    ADD CONSTRAINT Shop_Employee_FK FOREIGN KEY 
    ( 
     ManagerID
    ) 
    REFERENCES NH_EMPLOYEE 
    ( 
     EmployeeID
    ) 
;


ALTER TABLE NH_STOCK 
    ADD CONSTRAINT Stock_Product_FK FOREIGN KEY 
    ( 
     ProductID
    ) 
    REFERENCES NH_PRODUCT 
    ( 
     ProductID
    ) 
;


ALTER TABLE NH_STOCK 
    ADD CONSTRAINT Stock_Shop_FK FOREIGN KEY 
    ( 
     ShopID
    ) 
    REFERENCES NH_SHOP 
    ( 
     ShopID
    ) 
;


ALTER TABLE NH_SUPSHOP 
    ADD CONSTRAINT SupShop_Shop_FK FOREIGN KEY 
    ( 
     ShopID
    ) 
    REFERENCES NH_SHOP 
    ( 
     ShopID
    ) 
;


ALTER TABLE NH_SUPSHOP 
    ADD CONSTRAINT SupShop_Supplier_FK FOREIGN KEY 
    ( 
     SupplierID
    ) 
    REFERENCES NH_SUPPLIER 
    ( 
     SupplierID
    ) 
;


ALTER TABLE NH_ORDERPRODUCT 
    ADD CONSTRAINT TABLE_7_Order_FK FOREIGN KEY 
    ( 
     OrderID
    ) 
    REFERENCES NH_ORDER 
    ( 
     OrderID
    ) 
;



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            16
-- CREATE INDEX                             0
-- ALTER TABLE                             36
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE STRUCTURED TYPE                   0
-- CREATE COLLECTION TYPE                   0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ERRORS                                   1
-- WARNINGS                                 0
