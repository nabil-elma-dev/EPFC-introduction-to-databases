-- script used: spj_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT *
FROM s;

-- Exercise 2
SELECT s.SNAME NOM,
       s.CITY VILLE
FROM s;

-- Exercise 3
SELECT s.SNAME
FROM s
where s.CITY IN ('London', 'Paris');

-- Exercise 4
SELECT s.SNAME
FROM s
WHERE s.STATUS < 25
  AND CITY in ('Paris');

-- Exercise 5
SELECT s.SNAME
FROM s
WHERE STATUS NOT BETWEEN 15 and 25;

-- Exercise 6
SELECT p.PNAME
FROM p
WHERE color in ('Red', 'Blue')