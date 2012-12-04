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