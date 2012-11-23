/* These are the queries that answer the questions 4, 5, 6. */

/* Question 4
 * Can you list all the staff names and their manager's name, for a particular shop?
 */
  
SELECT E.Name AS Emp_Name, E.Surname AS Emp_Surname, 
M.Name AS Manager_Name, M.Surname AS Manager_Surname,
S.ShopID, S.Address
FROM NH_EMPLOYEE M, NH_EMPLOYEE E
INNER JOIN NH_SHOP S ON S.ShopID = E.ShopID
WHERE S.ManagerID = M.EmployeeID AND S.ShopID = 2;


/* Question 5
 * Can you list all the sessions a specific member of staff had on a specific day, which
 * customers and the room numbers?
 */

SELECT B.BookingID, B."Date", C.Name, C.Surname, R.RoomID, 
R.Name AS Room_Name
FROM NH_BOOKING B
INNER JOIN NH_EMPLOYEE E ON E.EmployeeID = B.EmployeeID
INNER JOIN NH_ROOM R ON R.RoomID = B.RoomID
INNER JOIN NH_CUSTOMER C ON C.CustomerID = B.CustomerID
WHERE E.EmployeeID = 5 AND B."Date" = '11-JUL-11';

 
/* Question 6
 * A customer could ask "Which member of staff did my 9-10 session today 
 * and can you tell me who their manager is because I want to complain?
 */
 
SELECT B.BookingID, TO_CHAR(B."Date",'hh24:mi:ss') AS DATETIME,
  E.NAME AS Emp_Name, E.Surname AS Emp_Surname, 
  M.Name AS Mgr_Name, M.Surname AS Mgr_Surname
FROM NH_EMPLOYEE M, NH_BOOKING B
INNER JOIN NH_CUSTOMER C ON C.CustomerID = B.CustomerID
INNER JOIN NH_EMPLOYEE E ON E.EmployeeID = B.EmployeeID
INNER JOIN NH_ROOM R ON R.RoomID = B.RoomID
INNER JOIN NH_SHOP S ON S.ShopID = E.ShopID
WHERE S.ManagerID = M.EmployeeID 
AND B."Date" = to_date('04/07/2010:01:00:00PM', 'dd/mm/yyyy:hh:mi:ssam');


/* In order to make the queries a little bit more dynamic to parameters, we will use stored
 * procedures and cursors to present the data.
 */
 
CREATE OR REPLACE PROCEDURE query4(
	storeIDParam IN INT, 
	queryCursor OUT SYS_REFCURSOR
	)
IS
	
BEGIN
	
	--Just initializing the cursor, feeding it with the query as well as the 
	--user parameter
	OPEN queryCursor FOR
	SELECT E.Name, E.Surname, M.Name, M.Surname, S.Name
	FROM NH_EMPLOYEE M, NH_EMPLOYEE E
	INNER JOIN NH_SHOP S ON S.ShopID = E.ShopID
	WHERE S.ManagerID = M.EmployeeID AND S.ShopID = storeIDParam;
	
END;

DECLARE
	queryCursor SYS_REFCURSOR;
	storeTable NH_SHOP%ROWTYPE;
BEGIN

	query4(2, queryCursor);
	
	LOOP
			FETCH queryCursor INTO storeTable;
		EXIT WHEN queryCursor%NOTFOUND;
		dbms_output.put_line(storeTable.S.Name);
	END LOOP;
	
	CLOSE queryCursor;
	
END;


 