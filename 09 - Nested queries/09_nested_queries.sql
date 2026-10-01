-- script used: spj_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT DISTINCT p.PNAME
FROM p
WHERE p.ID_P IN (SELECT spj.ID_P
                 FROM spj
                 WHERE spj.QTY = 500);

-- Exercise 2
SELECT DISTINCT p.PNAME
FROM p
    JOIN spj ON p.ID_P = spj.ID_P
WHERE spj.ID_S = 'S2';

-- Exercise 3
SELECT DISTINCT s.SNAME
FROM s
WHERE s.ID_S IN (SELECT spj.ID_S
                 FROM spj
                 WHERE spj.ID_P = 'P3');