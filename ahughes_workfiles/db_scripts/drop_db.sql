
/*  This script drops all the database tables and constraints, 			**
 ** without moving them to the recycle bin first. Use responsibly.		**
 ** "With Great Power comes Great Responsibility", thx Uncle Ben. */
 
 WHENEVER SQLERROR EXIT ROLLBACK;

DROP TABLE NH_BOOKING CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_CUSTOMER CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_EMPSPEC CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_INVENTORY CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_ORDERPRODUCT CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_PRODSUP CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_ROOM CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_STOCK CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_SUPSHOP CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_SUPPLIER CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_PRODUCT CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_ORDER CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_TREATMENT CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_EMPLOYEE CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_SHOP CASCADE CONSTRAINTS PURGE;
DROP TABLE NH_SPECIALTY CASCADE CONSTRAINTS PURGE;

DROP SEQUENCE BOOKING_SEQ;