-- script used: spj_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT DISTINCT p.PNAME
FROM p
WHERE p.ID_P IN (SELECT spj.ID_P
                 FROM spj
                 WHERE spj.QTY = 500);

-- Exercise 2
