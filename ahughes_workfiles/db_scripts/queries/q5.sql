/* Question 5
 * Can you list all the sessions a specific member of staff had on a specific day, which
 * customers and the room numbers?
 */

SELECT B.BookingID, B."Date", C.NAME, C.Surname, R.RoomID, 
R.Name AS Room_Name
FROM NH_BOOKING B
INNER JOIN NH_EMPLOYEE E ON E.EmployeeID = B.EmployeeID
INNER JOIN NH_ROOM R ON R.RoomID = B.RoomID
INNER JOIN NH_CUSTOMER C ON C.CustomerID = B.CustomerID
WHERE trunc(B."Date") = '11-jul-11' AND E.EmployeeID = 5;