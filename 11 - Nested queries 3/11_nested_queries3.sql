-- script used: facebook_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT s.SNAME
FROM s
WHERE lower(s.CITY) = 'london'
AND EXISTS(SELECT *
           FROM spj
           WHERE spj.ID_S = s.ID_S
           AND spj.QTY > 500);

-- Exercise 2
SELECT j.JNAME
FROM j
WHERE EXISTS(SELECT *
             FROM spj
             WHERE spj.ID_J = j.ID_J
             GROUP BY spj.ID_J
             HAVING sum(QTY) > 1000);
