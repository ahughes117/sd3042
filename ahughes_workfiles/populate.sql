/* So far we have dummy data for tables:

***Normal Tables***

PRODUCT
STOCK
SUPPLIER
ORDER
SHOP
INVENTORY
EMPLOYEE
SPECIALTY
ROOM
TREATMENT
CUSTOMER
BOOKING

***Linker Tables***
PRODSUP
ORDERPRODUCT
SUPSHOP
EMPSPEC

*** All the tables have the prefix NH_ in order to make database server management easier. 
*** At first all the normal tables are filled and after that the linker tables. The script is carefully 
*** created not to create any referential integrity errors, so, don't change the order of the insert
*** statements
*/

/* ProductID INT, Desc VARCHAR, Price NUMBER (DECIMAL) */
INSERT INTO NH_PRODUCT VALUES
(1, 'aDescription', 15);

/* StockID INT, ShopID INT, ProductID INT, Quantity INT */
INSERT INTO NH_STOCK VALUES
(1, 1, 1, 15);

/* SupplierID INT, Company VARCHAR, Name VARCHAR, Surname VARCHAR, Telephone VARCHAR */
INSERT INTO NH_SUPPLIER VALUES
(0, 'aCompany', 'aName', 'aSurname', 'aPhone');

INSERT INTO NH_SUPPLIER VALUES (1,'HeadCare','Jack','Lee','07908878547'); 
INSERT INTO NH_SUPPLIER VALUES (2,'HandLove','Red','Clif','07505512336');
INSERT INTO NH_SUPPLIER VALUES (3,'FootLook','Kelly','Kent','020874121458');
INSERT INTO NH_SUPPLIER VALUES (4,'BodyCare','Jeff','Kent','07814777874');
INSERT INTO NH_SUPPLIER VALUES (5,'LookGood','Jimmy','Jay','02085477777');  
INSERT INTO NH_SUPPLIER VALUES (6,'FirstWax','Ian','Beat','079022121456'); 
INSERT INTO NH_SUPPLIER VALUES (7,'Cleaning','Ken','Naz','020836987451'); 
INSERT INTO NH_SUPPLIER VALUES (8,'Marks and Spencer','Melinda','Belius','0759874521');
INSERT INTO NH_SUPPLIER VALUES (9,'Dont judge our name','George','Jack-the-Elfs','07569874521');
INSERT INTO NH_SUPPLIER VALUES (10,'Lousy Cleaning','George','Lazyman','0756594521');
INSERT INTO NH_SUPPLIER VALUES (11,'Croco-Skin','Sting','Tooth','07569874521');

/* OrderID INT, ShopID INT, Date, DATE, Comments VARCHAR */
INSERT INTO NH_ORDER VALUES
(1, 1, 1, '13-06-1990', 'some order comments');

/* ShopID INT, Name VARCHAR, Address VARCHAR, Zip_Code VARCHAR, ManagerID INT*/
INSERT INTO NH_SHOP VALUES
(1, 'aShopName', 'anAddress', 'aZip_Code', 2);
INSERT INTO NH_SHOP VALUES
(2, 'anothershop', 'anotherAddress', 'aZip', 1);

/* StockID INT, TreatmentID INT */
INSERT INTO NH_INVENTORY VALUES
(1, 1);

/* EmployeeID INT, ShopID INT, Name VARCHAR, Surname VARCHAR, Telephone VARCHAR */
INSERT INTO NH_EMPLOYEE VALUES
(1, 2, 'anEmployeeName', 'anEmployeeSurname', '123456789');

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
(1, 'aSpecialtyDescription');

/* RoomID INT, ShopID INT, Name VARCHAR, Desc VARCHAR */
INSERT INTO NH_ROOM VALUES
(1, 'aRoomName', 'aRoomDesc');

/* TreatmentID INT, Desc VARCHAR, Price DECIMAL, SpecialtyID INT */
INSERT INTO NH_TREATMENT VALUES
(1, 'aDescription', 15, 1);

/* CustomerID INT, Name VARCHAR, Surname VARCHAR, Telephone VARCHAR */
INSERT INTO NH_CUSTOMER VALUES
(1, 'aCustomerName', 'aCustomerSurname', '123456789');

INSERT INTO NH_CUSTOMER VALUES (2, 'aCustomerName2', 'aCustomerSurname3', '123456789');
INSERT INTO NH_CUSTOMER VALUES (3,'Jack','New','02089874563');
INSERT INTO NH_CUSTOMER VALUES (4,'Ryan','ken','0207589989');
INSERT INTO NH_CUSTOMER VALUES (5,' Kai','roon','02087414141');
INSERT INTO NH_CUSTOMER VALUES (6,'rick','nick','02082020232');
INSERT INTO NH_CUSTOMER VALUES (7,'Adam','Ali','0205255698');
INSERT INTO NH_CUSTOMER VALUES (8,'Ray','milton','02085478745');
INSERT INTO NH_CUSTOMER VALUES (9,'milly','toof','0208547457');
INSERT INTO NH_CUSTOMER VALUES (10,'Brown ','Joe','02087414141');
INSERT INTO NH_CUSTOMER VALUES (11,'Lloyd','bank','0208578785');
INSERT INTO NH_CUSTOMER VALUES (12,'Fred','Eil','02085488878');
INSERT INTO NH_CUSTOMER VALUES (12,'Freddie','Elliot','02085488878');
INSERT INTO NH_CUSTOMER VALUES (14,'Bill','bush','02085555893');
INSERT INTO NH_CUSTOMER VALUES (15,'red ','coe','02085412569');
INSERT INTO NH_CUSTOMER VALUES (16,'Web','Ref','02085411012');



/* BookingID INT, RoomID INT, EmployeeID INT, CustomerID INT, TreatmentID INT, Date DATE, Price DECIMAL */
INSERT INTO NH_BOOKING VALUES
(1, 1, 1, 1, 1, '04-07-2010');

/* ProductID INT, SupplierID INT */
INSERT INTO NH_PRODSUP VALUES
(1, 1);

/* OrderID INT, ProductID INT */
INSERT INTO NH_ORDERPRODUCT VALUES
(1, 1);

/* SupplierID INT, ShopID INT */
INSERT INTO NH_SUPSHOP VALUES
(1, 1);

/* EmployeeID INT, SpecialtyID INT, Date DATE */
INSERT INTO NH_EMPSPEC VALUES
(1, 1, '12-12-2012');
