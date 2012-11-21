/* These are the queries that answer the questions 4, 5, 6. */

/* Question 4
 * Can you list all the staff names and their manager's name, for a particular shop?
  */
  
SELECT E.NAME, E.SURNAME, M.NAME, M.SURNAME
FROM NH_EMPLOYEE E, NH_EMPLOYEE M
INNER JOIN NH_SHOP S ON S.ShopID = E.ShopID
WHERE S.ManagerID = M.EmployeeID