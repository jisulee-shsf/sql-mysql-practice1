-- [Section 1] GROUP BY

# SupplierID를 기준으로 평균 Price 출력하기
SELECT SupplierID, AVG(Price)
FROM Products
GROUP BY SupplierID;

# SupplierID / CategoryId 기준으로 가격이 높은 순으로 평균 Price 출력하기
SELECT SupplierID
     , CategoryId
     , AVG(Price)
FROM Products
GROUP BY SupplierID, CategoryId
ORDER BY AVG(Price) DESC;

# SupplierID / CategoryId 기준으로 50 이상의 평균 Price를 'avg_price' 명칭으로 출력하기
SELECT SupplierID
     , CategoryId
     , AVG(Price) AS avg_price
FROM Products
GROUP BY SupplierID, CategoryId
HAVING AVG(Price) >= 50;

-- [Section 2] HakerRank

/* Top Earners -
We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers. */
SELECT salary * months AS earnings
     , COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;
