/* ***Trigger Example***
CREATE [OR REPLACE] TRIGGER trigger_name
BEFORE|AFTER trigger_event [OR trigger_event ...]
[OF column_list ] ON table
[FOR EACH ROW]
[WHEN (trigger condition)]
BEGIN
<trigger body>
END;
*/

/* ***Stored Procedure Example***
CREATE OR REPLACE PROCEDURE
mytest(v_empno in EMP.empno%TYPE)
AS
v_sal INTEGER;
BEGIN
	SELECT sal
	INTO v_sal
	FROM EMP
	WHERE EMPNO = v_empno;
	IF (v_sal < 900) THEN
		DBMS_OUTPUT.PUT_LINE('Pay rise.');
	ELSE
		DBMS_OUTPUT.PUT_LINE('Enough!');
	END IF;
END;
*/

/* This function calculates and applies a discount to the booking that comply with the 
 * conditions below:
 * 10% for the 3rd visit
 * 20% for the 6th visit
 * 30% for the 9th visit
 */
CREATE OR REPLACE TRIGGER discount
BEFORE INSERT ON "NH_BOOKING"
FOR EACH ROW
BEGIN
	
END;

/* This procedure makes-inserts a booking after it checks about the availability of 
 * the room. It makes use of the AutoIncrementing trigger and also of the check 
 * availability function
 */
CREATE OR REPLACE PROCEDURE
new_booking(
	v_roomID IN INT,
	v_employeeID IN INT,
	v_customerID IN INT,
	v_treatmentID IN INT,
	v_date IN NH_BOOKING."Date"%TYPE,
	v_price IN,
	v_bookingID OUT INT)
AS
v_errors INTEGER;
BEGIN
	
END;

/* This function checks and returns the number of rows a particular query has.
 * This query is the one who checks if we have date - room clashes and returns
 * 0 if everything is alright (no rows fetched) and 1 if we need to check another 
  * time in the future.
 */
 CREATE OR REPLACE FUNCTION
 isRoomAvailable(
	--input arguments: we only need room number and date (contains time)
	v_roomID IN INT,
	v_date IN NH_BOOKING."Date"%TYPE)
	--we return only whether we had rows or not.
	RETURN NUMBER
IS
	--output variable
	v_result NUMBER;
	
	--creating the cursor, using the suitable query
	CURSOR queryCursor IS
		SELECT RoomID, EmployeeID, CustomerID, TreatmentID, "Date"
		FROM NH_BOOKING
		WHERE RoomID = v_roomID AND "Date" = v_date;
		
BEGIN

	--opening and iterating through cursor
	OPEN queryCursor
	FETCH queryCursor INTO v_output;
	
	--if we have rows on resultset, means that the room is already booked.
	IF queryCursor%FOUND THEN
		v_output := 1;
	ELSE
		v_output := 0;
	END IF;
	
	--closing resources is a good habit
	CLOSE queryCursor;

--returning result
RETURN v_output;

EXCEPTION
WHEN OTHERS THEN
	raise_application_error(-2001, 'Critical Error, call ahughes' || SQLERRM);
END;
	

 

/* This trigger autoincrements a primary key value and makes insertions easier */
CREATE OR REPLACE SEQUENCE BOOKING_SEQ;

CREATE OR REPLACE TRIGGER BOOKINGID_AI
BEFORE INSERT ON "NH_BOOKING"
FOR EACH ROW
BEGIN
SELECT "BOOKING_SEQ".NEXTVAL INTO :NEW.BookingID FROM DUAL;
END;


