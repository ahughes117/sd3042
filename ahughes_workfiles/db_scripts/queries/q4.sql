/* Question 4
 * Can you list all the staff names and their manager's name, for a particular shop?
 */
  
SELECT E.Name AS Emp_Name, E.Surname AS Emp_Surname, 
M.Name AS Manager_Name, M.Surname AS Manager_Surname,
S.ShopID, S.Address
FROM NH_EMPLOYEE M, NH_EMPLOYEE E
INNER JOIN NH_SHOP S ON S.ShopID = E.ShopID
WHERE S.ManagerID = M.EmployeeID AND S.ShopID = 2;