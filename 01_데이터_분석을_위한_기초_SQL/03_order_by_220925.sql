-- [Section 1] ORDER BY

-- Q1. PRICE가 50보다 큰 물품을 내림차순으로 정렬하기
SELECT * 
FROM Products
WHERE PRICE > 50
ORDER BY PRICE DESC;

-- Q2. PRICE가 가장 낮은 물품 출력하기
SELECT * 
FROM Products
ORDER BY PRICE
LIMIT 1;

-- Q3. PRICE가 가장 높은 물품 출력하기
SELECT * 
FROM Products
ORDER BY PRICE DESC
LIMIT 1;

-- [Section 2] HackerRank

/* Q1. Employee Names)
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order. */
SELECT name
FROM Employee
ORDER BY;

/* Q2. Employee Salaries)
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. 
Sort your result by ascending employee_id. */
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;

/* Q3. Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID. */
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;

/* Q4. Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than. 
 Round your answer to  decimal places. */
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345 
ORDER BY LAT_N DESC
LIMIT 1;
