/* These are the queries that answer the questions 4, 5, 6. */

/* Question 4
 * Can you list all the staff names and their manager's name, for a particular shop?
 * I'll also need to write a procedure that takes the ShopID as a parameter.
 */
  
SELECT E.Name, E.Surname, M.Name, M.Surname
FROM NH_EMPLOYEE M, NH_EMPLOYEE E
INNER JOIN NH_SHOP S ON S.ShopID = E.ShopID
WHERE S.ManagerID = M.EmployeeID AND S.ShopID = ;

/* Question 5
 * Can you list all the sessions a specific member of staff had on a specific day, which
 * customers and the room numbers?
 */

SELECT B.BookingID, B."Date", C.Name, C.Surname, R.RoomID, R.Name
FROM NH_BOOKING B
INNER JOIN NH_EMPLOYEE E ON E.EmployeeID = B.EmployeeID
INNER JOIN NH_ROOM R ON R.RoomID = B.RoomID
INNER JOIN NH_CUSTOMER C ON C.CustomerID = B.CustomerID
WHERE E.EmployeeID = 2 AND B."Date" = '05-JUN-12';
 
/* Question 6
 * A customer could ask "Which member of staff did my 9-10 session today 
 * and can you tell me who their manager is because I want to complain?
 */
 
 