-- script used: spj_mysql.sql

-- Exercice 1
SELECT *
FROM s;

-- Exercice 2
SELECT s.SNAME NOM,
       s.CITY VILLE
FROM s;

-- Exercice 3
SELECT s.SNAME
FROM s
where s.CITY IN ('London', 'Paris');

-- Exercice 4
SELECT s.SNAME
FROM s
WHERE s.STATUS < 25
  AND CITY in ('Paris');

-- Exercice 5
SELECT s.SNAME
FROM s
WHERE STATUS NOT BETWEEN 15 and 25;

-- Exercice 6
SELECT p.PNAME
FROM p
WHERE color in ('Red', 'Blue')