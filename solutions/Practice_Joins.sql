CREATE VIEW customer_address_us
as 
SELECT CustomerKey, FirstName, LastName, AddressLine1
FROM DimCustomer;

DROP VIEW customer_address_us;

SELECT * FROM 
customer_address_us c
LEFT JOIN
FactInternetSales f
ON
c.CustomerKey = f.CustomerKey
UNION
SELECT * FROM 
FactInternetSales f
LEFT JOIN
customer_address_us c
ON
f.CustomerKey = c.CustomerKey
LIMIT 30;

--- Cross Join
SELECT * FROM
DimCurrency
CROSS JOIN
DimDepartmentGroup;
