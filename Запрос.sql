SELECT
Orders.CustomerID,
Customers.CustomerName,
COUNT (DISTINCT Orders.OrderID) AS Cnt,
MAX (Orders.OrderDate) AS LastDate
FROM
Customers
JOIN
Orders ON Orders.CustomerID = Customers.CustomerID
GROUP BY
Customers.CustomerName
HAVING Cnt > 5
ORDER BY
Cnt DESC;