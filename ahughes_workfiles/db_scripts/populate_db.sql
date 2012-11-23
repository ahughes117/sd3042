/* So far we have dummy data for tables:

***Normal Tables***

***Group1 Tables***
PRODUCT (15)
SUPPLIER (11)
TREATMENT (13)
CUSTOMER (16)

STOCK (15)
ORDER (12)
SHOP (7)
INVENTORY (12)
EMPLOYEE (15)
SPECIALTY (12)
ROOM (13)
BOOKING (20)

***Linker Tables***
PRODSUP (17)
ORDERPRODUCT (18)
SUPSHOP (18)
EMPSPEC (17)

*** All the tables have the prefix NH_ in order to make database server management easier. 

*** GROUP 1 Tables: The tables that are totally constraint independent, meaning that they can be inserted in any order because they havent got any outgoing foreign key constraints to other tables.

*** GROUP 2 Tables: The tables that contain foreign keys which depend on tables of GROUP 1 only, meaning that they can be inserted in any order after the GROUP 1 tables have been inserted.
*/

/* GROUP 1 Tables */

/* ProductID INT, Desc VARCHAR, Price NUMBER (DECIMAL) */
INSERT INTO NH_PRODUCT VALUES 
(1, 'ahughes co', 15);

INSERT INTO NH_PRODUCT VALUES (2, 'Amazon Hair', 13.2);
INSERT INTO NH_PRODUCT VALUES (3, 'Latex Gloves', 2.7);
INSERT INTO NH_PRODUCT VALUES (4, 'Premium Lotion', 22.75);
INSERT INTO NH_PRODUCT VALUES (5, 'Ultra Premium Lambda Olive Oil', 49.99);
INSERT INTO NH_PRODUCT VALUES (6, 'Syringe', 3.7);
INSERT INTO NH_PRODUCT VALUES (7, 'My Lucky One', 11.7);
INSERT INTO NH_PRODUCT VALUES (8, 'Massage Underwear', 0.75);
INSERT INTO NH_PRODUCT VALUES (9, 'Massage Slippers', 1.99);
INSERT INTO NH_PRODUCT VALUES (10, 'Hair Protector', 0.5);
INSERT INTO NH_PRODUCT VALUES (11, 'Natural Hair Conditioner', 9.99);
INSERT INTO NH_PRODUCT VALUES (12, 'Natural Hair Shampoo', 4.99);
INSERT INTO NH_PRODUCT VALUES (13, 'Relaxing Herbs', 3.99);
INSERT INTO NH_PRODUCT VALUES (14, 'Natural Painkillers', 6.78);
INSERT INTO NH_PRODUCT VALUES (15, 'Valerian Relaxing Pills', 3.98);


/* SupplierID INT, Company VARCHAR, Name VARCHAR, Surname VARCHAR, Telephone VARCHAR */
INSERT INTO NH_SUPPLIER VALUES
(1, 'HeadCare', 'Jack', 'Lee', '07908878547'); 

INSERT INTO NH_SUPPLIER VALUES (2, 'HandLove', 'Red', 'Clif', '07505512336');
INSERT INTO NH_SUPPLIER VALUES (3, 'FootLook', 'Kelly', 'Kent', '020874121458');
INSERT INTO NH_SUPPLIER VALUES (4, 'BodyCare', 'Jeff', 'Kent', '07814777874');
INSERT INTO NH_SUPPLIER VALUES (5, 'LookGood', 'Jimmy', 'Jay', '02085477777');  
INSERT INTO NH_SUPPLIER VALUES (6, 'FirstWax', 'Ian', 'Beat', '079022121456'); 
INSERT INTO NH_SUPPLIER VALUES (7, 'Cleaning', 'Ken', 'Naz', '020836987451'); 
INSERT INTO NH_SUPPLIER VALUES (8, 'Marks and Spencer', 'Melinda', 'Belius', '0759874521');
INSERT INTO NH_SUPPLIER VALUES (9, 'Dont judge our name', 'George', 'Jack-the-Elfs', '07569874521');
INSERT INTO NH_SUPPLIER VALUES (10, 'Lousy Cleaning', 'George', 'Lazyman', '0756594521');
INSERT INTO NH_SUPPLIER VALUES (11, 'Croco-Skin', 'Sting', 'Tooth', '07569874521');


/* TreatmentID INT, Desc VARCHAR, Price DECIMAL */
INSERT INTO NH_TREATMENT VALUES
(1, 'Head Care', 15);

INSERT INTO NH_TREATMENT VALUES (2, 'Foot Massage', 8.88);
INSERT INTO NH_TREATMENT VALUES (3, 'Full Body Massage', 30);
INSERT INTO NH_TREATMENT VALUES (4, 'Hair Loss Treatment', 100);
INSERT INTO NH_TREATMENT VALUES (5, 'Leg Wax and Care',  20);
INSERT INTO NH_TREATMENT VALUES (6, 'Spanish Massage', 55);
INSERT INTO NH_TREATMENT VALUES (7, 'Face Massage', 15);
INSERT INTO NH_TREATMENT VALUES (8, 'Face Scrub', 18);
INSERT INTO NH_TREATMENT VALUES (9, 'Voice Therapy', 70);
INSERT INTO NH_TREATMENT VALUES (10, 'Head Massage', 40);
INSERT INTO NH_TREATMENT VALUES (11, 'Body Scrub', 60);
INSERT INTO NH_TREATMENT VALUES (12, 'Stress Therapy', 28.99);
INSERT INTO NH_TREATMENT VALUES (13, 'Full Body Massage', 50);


/* CustomerID INT, Name VARCHAR, Surname VARCHAR, Telephone VARCHAR */
INSERT INTO NH_CUSTOMER VALUES
(1, 'aCustomerName', 'aCustomerSurname', '123456789');

INSERT INTO NH_CUSTOMER VALUES (2, 'aCustomerName2', 'aCustomerSurname3', '123456789');
INSERT INTO NH_CUSTOMER VALUES (3, 'Jack', 'New', '02089874563');
INSERT INTO NH_CUSTOMER VALUES (4, 'Ryan', 'ken', '0207589989');
INSERT INTO NH_CUSTOMER VALUES (5, ' Kai', 'roon', '02087414141');
INSERT INTO NH_CUSTOMER VALUES (6, 'rick', 'nick', '02082020232');
INSERT INTO NH_CUSTOMER VALUES (7, 'Adam', 'Ali', '0205255698');
INSERT INTO NH_CUSTOMER VALUES (8, 'Ray', 'milton', '02085478745');
INSERT INTO NH_CUSTOMER VALUES (9, 'milly', 'toof', '0208547457');
INSERT INTO NH_CUSTOMER VALUES (10, 'Brown ', 'Joe', '02087414141');
INSERT INTO NH_CUSTOMER VALUES (11, 'Lloyd', 'bank', '0208578785');
INSERT INTO NH_CUSTOMER VALUES (12, 'Fred', 'Eil', '02085488878');
INSERT INTO NH_CUSTOMER VALUES (13, 'Freddie', 'Elliot', '02085488878');
INSERT INTO NH_CUSTOMER VALUES (14, 'Bill', 'bush', '02085555893');
INSERT INTO NH_CUSTOMER VALUES (15, 'red ', 'coe', '02085412569');
INSERT INTO NH_CUSTOMER VALUES (16, 'Web', 'Ref', '02085411012');

/* GROUP 2 TABLES */

/* StockID INT, ShopID INT, ProductID INT, Quantity INT */
INSERT INTO NH_STOCK VALUES
(1, 1, 1, 15);

INSERT INTO NH_STOCK VALUES (2, 1, 12, 12);
INSERT INTO NH_STOCK VALUES (3, 1, 14, 4);
INSERT INTO NH_STOCK VALUES (4, 3, 3, 3);
INSERT INTO NH_STOCK VALUES (5, 3, 10, 4);
INSERT INTO NH_STOCK VALUES (6, 4, 9, 2);
INSERT INTO NH_STOCK VALUES (7, 6, 15, 14);
INSERT INTO NH_STOCK VALUES (8, 7, 1, 10);
INSERT INTO NH_STOCK VALUES (9, 7, 2, 4);
INSERT INTO NH_STOCK VALUES (10, 5, 12, 12);
INSERT INTO NH_STOCK VALUES (11, 2, 14, 4);
INSERT INTO NH_STOCK VALUES (12, 1, 3, 3);
INSERT INTO NH_STOCK VALUES (13, 3, 4, 5);
INSERT INTO NH_STOCK VALUES (14, 5, 13, 4);
INSERT INTO NH_STOCK VALUES (15, 1, 4, 5);

/* OrderID INT, ShopID INT, Date, DATE, Comments VARCHAR */
INSERT INTO NH_ORDER VALUES
(1, 1, '13-JUN-2000', 'Delivery before July please');

INSERT INTO NH_ORDER VALUES (2, 1, '22-FEB-2012', 'dont make a mess like last time');
INSERT INTO NH_ORDER VALUES (3, 3, '22-DEC-2011', 'URGENT! BEFORE CHRISTMAS!');
INSERT INTO NH_ORDER VALUES (4, 3, '23-DEC-2011', 'complementary to orderID 3');
INSERT INTO NH_ORDER VALUES (5, 4, '23-FEB-2011', 'one package broken last time, be careful');
INSERT INTO NH_ORDER VALUES (6, 6, '1-MAR-2011', 'before 10/3/2011 please');
INSERT INTO NH_ORDER VALUES (7, 7, '24-MAR-2011', 'Its a national holiday in Greece tomorrow, we will have visitors');
INSERT INTO NH_ORDER VALUES (8, 4, '04-APR-2011', 'Stock Refresh');
INSERT INTO NH_ORDER VALUES (9, 6, '05-MAY-2011', 'Ordinary Scheduled');
INSERT INTO NH_ORDER VALUES (10, 2, '04-JUN-2011', 'no comment');
INSERT INTO NH_ORDER VALUES (11, 4, '07-JUL-2011', 'mid summer stock refreshment');
INSERT INTO NH_ORDER VALUES (12, 7, '08-AUG-2011', 'just in case');


/* ShopID INT, Name VARCHAR, Address VARCHAR, Zip_Code VARCHAR, ManagerID INT*/
INSERT INTO NH_SHOP VALUES
(1, 'aShopName', 'anAddress', 'aZip_Code', 2);

INSERT INTO NH_SHOP VALUES (2,'Bling','74 Addle Hill','E12 kiu', 4);
INSERT INTO NH_SHOP VALUES (3,'Sexy SPA','19 Abchurch Yard','nw2 cfr', 8);
INSERT INTO NH_SHOP VALUES (4,'The Hot Stop','95 Addle Street','s2 6za', 10);
INSERT INTO NH_SHOP VALUES (5,'Relaxing','64Cutler Street','sw1 2lo', 11);
INSERT INTO NH_SHOP VALUES (6,'Abbey','9 Cursitor Street','e13 98h', 14);
INSERT INTO NH_SHOP VALUES (7,'Holy Bacon','45 Amen Corner ','n9 9np', 15);

/* StockID INT, TreatmentID INT */
INSERT INTO NH_INVENTORY VALUES
(1, 1);

INSERT INTO NH_INVENTORY VALUES (2, 1);
INSERT INTO NH_INVENTORY VALUES (3, 4);
INSERT INTO NH_INVENTORY VALUES (4, 2);
INSERT INTO NH_INVENTORY VALUES (5, 12);
INSERT INTO NH_INVENTORY VALUES (6, 9);
INSERT INTO NH_INVENTORY VALUES (7, 8);
INSERT INTO NH_INVENTORY VALUES (8, 6);
INSERT INTO NH_INVENTORY VALUES (9, 4);
INSERT INTO NH_INVENTORY VALUES (10, 3);
INSERT INTO NH_INVENTORY VALUES (11, 3);
INSERT INTO NH_INVENTORY VALUES (12, 1);

/* EmployeeID INT, ShopID INT, Name VARCHAR, Surname VARCHAR, Telephone VARCHAR */
INSERT INTO NH_EMPLOYEE VALUES
(1, 1, 'anEmployeeName', 'anEmployeeSurname', '123456789');

INSERT INTO NH_EMPLOYEE VALUES (2, 1, 'Manager', 'Badass', '123456789');
INSERT INTO NH_EMPLOYEE VALUES (3,1, 'Employee', 'Tool', '123456789');
INSERT INTO NH_EMPLOYEE VALUES (4, 2, 'Foreigner', 'nbd wants him', '123456789');
INSERT INTO NH_EMPLOYEE VALUES (5, 2, 'Dwayne','Johnson', '02075122365');
INSERT INTO NH_EMPLOYEE VALUES (6, 2, 'Rey','Riley', '012254589651');
INSERT INTO NH_EMPLOYEE VALUES (7, 2, 'Kelly','Kelly', '01548596321');
INSERT INTO NH_EMPLOYEE VALUES (8, 3, 'Zack','Rider', '020714788741');
INSERT INTO NH_EMPLOYEE VALUES (9, 3, 'Alicia','Fox', '010136987456');
INSERT INTO NH_EMPLOYEE VALUES (10, 4, 'Mohammed', 'Ali', '020845554874');
INSERT INTO NH_EMPLOYEE VALUES (11, 5, 'Jay','Rich','012202012354');
INSERT INTO NH_EMPLOYEE VALUES (12, 5, 'Ben','Cole','020741113269');
INSERT INTO NH_EMPLOYEE VALUES (13, 5, 'Steve','Law','020741113269');
INSERT INTO NH_EMPLOYEE VALUES (14, 6, 'Rock','Ross','020741113269');
INSERT INTO NH_EMPLOYEE VALUES (15, 7, 'Pat','Heart','020741113269');

/*SpecialtyID INT, Description VARCHAR */
INSERT INTO NH_SPECIALTY VALUES
(1, 'Head Massage');

INSERT INTO NH_SPECIALTY VALUES (2, 'Neck Massage');
INSERT INTO NH_SPECIALTY VALUES (3, 'Music and Aura Relaxation');
INSERT INTO NH_SPECIALTY VALUES (4, 'Full Body Massage');
INSERT INTO NH_SPECIALTY VALUES (5, 'Body Scrub');
INSERT INTO NH_SPECIALTY VALUES (6, 'Face Scrub');
INSERT INTO NH_SPECIALTY VALUES (7, 'Dry Hair Treatment');
INSERT INTO NH_SPECIALTY VALUES (8, 'Curls and Head Scrub');
INSERT INTO NH_SPECIALTY VALUES (9, 'Dry Skin Treatment');
INSERT INTO NH_SPECIALTY VALUES (10, 'Psoriasis Treatment');
INSERT INTO NH_SPECIALTY VALUES (11, 'Reiki Massage');
INSERT INTO NH_SPECIALTY VALUES (12, 'Nail Polishing');


/* RoomID INT, ShopID INT, Name VARCHAR, Desc VARCHAR */
INSERT INTO NH_ROOM VALUES 
(1, 1, 'G.01','Comfy');

INSERT INTO NH_ROOM VALUES (2, 1, 'G.02','Richmans');
INSERT INTO NH_ROOM VALUES (3, 1, 'F.01','Cozy');
INSERT INTO NH_ROOM VALUES (4, 2, 'G.01','Jubilee');
INSERT INTO NH_ROOM VALUES (5, 3, 'G.01','Estate');
INSERT INTO NH_ROOM VALUES (6, 3, 'G.02','Mansion');
INSERT INTO NH_ROOM VALUES (7, 5, 'E.12','Hand King');
INSERT INTO NH_ROOM VALUES (8, 5, 'E.13','Foot King');
INSERT INTO NH_ROOM VALUES (9, 5, 'F.12','21st century');
INSERT INTO NH_ROOM VALUES (10, 6, 'G.01','Ergonomic');
INSERT INTO NH_ROOM VALUES (11, 7, '117','Body Temple');
INSERT INTO NH_ROOM VALUES (12, 7, '116','Physical Miracle');
INSERT INTO NH_ROOM VALUES (13, 3, '1.01','Illumination');


/* BookingID INT, RoomID INT, EmployeeID INT, CustomerID INT, TreatmentID INT, Date DATE, Price DECIMAL */
INSERT INTO NH_BOOKING VALUES
(1, 1, 1, 1, 1, to_date('04/07/2010:12:00:00AM', 'dd/mm/yyyy:hh:mi:ssam'), 50.2);

INSERT INTO NH_BOOKING VALUES (2, 11, 12, 14, 11, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), 45);
INSERT INTO NH_BOOKING VALUES (3, 4, 2, 4, 6, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '05-JUN-2012', 70);
INSERT INTO NH_BOOKING VALUES (4, 7, 4, 6, 8, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '04-SEP-2013', 85);
INSERT INTO NH_BOOKING VALUES (5, 2, 10, 5, 9, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '13-JUL-2012', 90);
INSERT INTO NH_BOOKING VALUES (6, 4, 9, 3, 5, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '30-AUG-2012', 54);
INSERT INTO NH_BOOKING VALUES (7, 12, 5, 7, 3, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '11-JUL-2011', 44);
INSERT INTO NH_BOOKING VALUES (8, 13, 3, 8, 6, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '25-SEP-2011', 40);
INSERT INTO NH_BOOKING VALUES (9, 11, 1, 2, 12, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '19-JUL-2010', 39.99);
INSERT INTO NH_BOOKING VALUES (10, 10, 14, 8, 6, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '20-OCT-2012', 49.99);
INSERT INTO NH_BOOKING VALUES (11, 1, 11, 5, 8, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '17-JUL-2012', 59.99);
INSERT INTO NH_BOOKING VALUES (12, 4, 5, 11, 13, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '11-JUL-2011', 43.3);
INSERT INTO NH_BOOKING VALUES (13, 7, 3, 10, 12, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '11-JUL-2011', 117);
INSERT INTO NH_BOOKING VALUES (14, 8, 7, 12, 10, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '04-JUL-2012', 65.4);
INSERT INTO NH_BOOKING VALUES (15, 2, 8, 14, 5, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '12-DEC-2011', 23.6);
INSERT INTO NH_BOOKING VALUES (16, 7, 2, 4, 6, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '14-SEP-2012', 32.3);
INSERT INTO NH_BOOKING VALUES (17, 4, 4, 2, 2, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '11-SEP-2008', 56.7);
INSERT INTO NH_BOOKING VALUES (18, 12, 11, 8, 7, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '16-JUL-2010', 55);
INSERT INTO NH_BOOKING VALUES (19, 13, 6, 15, 1, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '18-JUL-2010', 42);
INSERT INTO NH_BOOKING VALUES (20, 1, 3, 1, 12, to_date('2011/07/04:12:00:00AM', 'yyyy/mm/dd:hh:mi:ssam'), '20-JUL-2010', 49.99);


/* ProductID INT, SupplierID INT */
INSERT INTO NH_PRODSUP VALUES
(1, 1);

INSERT INTO NH_PRODSUP VALUES (1, 2);
INSERT INTO NH_PRODSUP VALUES (2, 2);
INSERT INTO NH_PRODSUP VALUES (1, 5);
INSERT INTO NH_PRODSUP VALUES (1, 6);
INSERT INTO NH_PRODSUP VALUES (5, 1);
INSERT INTO NH_PRODSUP VALUES (8, 1);
INSERT INTO NH_PRODSUP VALUES (1, 7);
INSERT INTO NH_PRODSUP VALUES (3, 1);
INSERT INTO NH_PRODSUP VALUES (6, 8);
INSERT INTO NH_PRODSUP VALUES (4, 3);
INSERT INTO NH_PRODSUP VALUES (7, 1);
INSERT INTO NH_PRODSUP VALUES (8, 8);
INSERT INTO NH_PRODSUP VALUES (7, 6);
INSERT INTO NH_PRODSUP VALUES (3, 4);
INSERT INTO NH_PRODSUP VALUES (2, 6);
INSERT INTO NH_PRODSUP VALUES (10, 11);

/* OrderID INT, ProductID INT, Quantity INT*/
INSERT INTO NH_ORDERPRODUCT VALUES
(1, 1, 3);

INSERT INTO NH_ORDERPRODUCT VALUES (12, 15, 5);
INSERT INTO NH_ORDERPRODUCT VALUES (11, 13, 6);
INSERT INTO NH_ORDERPRODUCT VALUES (1, 12, 8);
INSERT INTO NH_ORDERPRODUCT VALUES (4, 9, 4);
INSERT INTO NH_ORDERPRODUCT VALUES (6, 5, 15);
INSERT INTO NH_ORDERPRODUCT VALUES (3, 1, 8);
INSERT INTO NH_ORDERPRODUCT VALUES (2, 1, 7);
INSERT INTO NH_ORDERPRODUCT VALUES (6, 4, 23);
INSERT INTO NH_ORDERPRODUCT VALUES (7, 7, 35);
INSERT INTO NH_ORDERPRODUCT VALUES (2, 2, 8);
INSERT INTO NH_ORDERPRODUCT VALUES (8, 4, 23);
INSERT INTO NH_ORDERPRODUCT VALUES (10, 8, 15);
INSERT INTO NH_ORDERPRODUCT VALUES (11, 12, 32);
INSERT INTO NH_ORDERPRODUCT VALUES (9, 4, 1);
INSERT INTO NH_ORDERPRODUCT VALUES (4, 5, 5);
INSERT INTO NH_ORDERPRODUCT VALUES (5, 7, 80);
INSERT INTO NH_ORDERPRODUCT VALUES (2, 4, 16);

/* SupplierID INT, ShopID INT */
INSERT INTO NH_SUPSHOP VALUES
(1, 1);

INSERT INTO NH_SUPSHOP VALUES (11, 5);
INSERT INTO NH_SUPSHOP VALUES (11, 1);
INSERT INTO NH_SUPSHOP VALUES (1, 6);
INSERT INTO NH_SUPSHOP VALUES (6, 2);
INSERT INTO NH_SUPSHOP VALUES (4, 2);
INSERT INTO NH_SUPSHOP VALUES (5, 4);
INSERT INTO NH_SUPSHOP VALUES (5, 6);
INSERT INTO NH_SUPSHOP VALUES (6, 3);
INSERT INTO NH_SUPSHOP VALUES (1, 7);
INSERT INTO NH_SUPSHOP VALUES (2, 1);
INSERT INTO NH_SUPSHOP VALUES (6, 4);
INSERT INTO NH_SUPSHOP VALUES (4, 3);
INSERT INTO NH_SUPSHOP VALUES (10, 7);
INSERT INTO NH_SUPSHOP VALUES (10, 5);
INSERT INTO NH_SUPSHOP VALUES (5, 1);
INSERT INTO NH_SUPSHOP VALUES (2, 2);
INSERT INTO NH_SUPSHOP VALUES (9, 5);


/* EmployeeID INT, SpecialtyID INT, Date DATE */
INSERT INTO NH_EMPSPEC VALUES
(1, 1, '12-DEC-2011');

INSERT INTO NH_EMPSPEC VALUES (2, 1, '18-NOV-2011');
INSERT INTO NH_EMPSPEC VALUES (5, 4, '04-FEB-2012');
INSERT INTO NH_EMPSPEC VALUES (6, 10, '10-MAR-2012');
INSERT INTO NH_EMPSPEC VALUES (9, 8, '26-APR-2012');
INSERT INTO NH_EMPSPEC VALUES (6, 7, '27-OCT-2012');
INSERT INTO NH_EMPSPEC VALUES (5, 3, '23-NOV-2011');
INSERT INTO NH_EMPSPEC VALUES (7, 5, '12-OCT-2010');
INSERT INTO NH_EMPSPEC VALUES (3, 4, '05-JUN-2012');
INSERT INTO NH_EMPSPEC VALUES (4, 3, '12-DEC-2011');
INSERT INTO NH_EMPSPEC VALUES (5, 5, '12-NOV-2012');
INSERT INTO NH_EMPSPEC VALUES (6, 6, '12-MAR-2009');
INSERT INTO NH_EMPSPEC VALUES (9, 9, '15-APR-2008');
INSERT INTO NH_EMPSPEC VALUES (9, 3, '11-DEC-2010');
INSERT INTO NH_EMPSPEC VALUES (5, 2, '20-DEC-2008');
INSERT INTO NH_EMPSPEC VALUES (7, 7, '25-JAN-2011');
INSERT INTO NH_EMPSPEC VALUES (6, 3, '27-MAR-2011');
INSERT INTO NH_EMPSPEC VALUES (4, 8, '12-DEC-2007');
