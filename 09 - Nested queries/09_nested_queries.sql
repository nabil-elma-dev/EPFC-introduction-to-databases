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

-- Exercise 4
SELECT DISTINCT s.SNAME
FROM s
WHERE s.ID_S IN (SELECT spj.ID_S
                 FROM spj
                 WHERE spj.ID_P IN (SELECT p.ID_P
                                    FROM p
                                    WHERE lower(p.COLOR) = 'red')
                 );

-- Exercise 5
SELECT s.ID_S,
       s.SNAME
FROM s
WHERE s.ID_S IN (SELECT spj.ID_S
                 FROM spj
                 WHERE spj.ID_J IN(SELECT j.ID_J
                                   FROM j
                                   WHERE lower(j.JNAME) = 'console')
                 );

-- Exercise 6
SELECT DISTINCT j.JNAME
FROM j
WHERE j.ID_J IN (SELECT spj.ID_J
                 FROM spj
                 GROUP BY spj.ID_J
                 HAVING sum(spj.QTY) > 1000);

-- Exercise 7
SELECT DISTINCT p.PNAME
FROM p
WHERE  p.COLOR != ALL (SELECT p.COLOR
                      FROM p
                      GROUP BY p.COLOR
                      HAVING count(*) > 1);

-- Exercise 8
SELECT DISTINCT p.PNAME
FROM p
WHERE p.WEIGHT >= ALL (SELECT p.WEIGHT
                       FROM p)
