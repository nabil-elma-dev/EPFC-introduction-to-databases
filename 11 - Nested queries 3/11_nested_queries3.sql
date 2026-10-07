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

-- Exercise 3
SELECT s.CITY
FROM s
    UNION
SELECT p.CITY
FROM p
    UNION
SELECT j.CITY
FROM j;

-- Exercise 4
SELECT s.ID_S
FROM s
WHERE NOT EXISTS(SELECT *
                 FROM spj
                    JOIN p ON spj.ID_P = p.ID_P
                 WHERE s.ID_S = spj.ID_S
                 AND lower(p.COLOR) = 'blue');

-- Exercise 5
SELECT count(*)
FROM spj spj1
WHERE spj1.QTY < 350
AND NOT EXISTS(SELECT *
               FROM spj spj2 JOIN j ON spj2.ID_J = j.ID_J
               WHERE spj2.ID_S = spj1.ID_S
               AND lower(j.CITY) = 'paris');

-- Exercise 6
SELECT s.ID_S
FROM s
WHERE NOT EXISTS(SELECT *
                 FROM spj
                 WHERE s.ID_S = spj.ID_S
                 GROUP BY spj.ID_S, spj.ID_P
                    HAVING sum(spj.QTY) > 650
                 );

-- Exercise 7
SELECT spj1.ID_S
FROM spj spj1
WHERE EXISTS(SELECT *
             FROM spj spj2
             WHERE spj2.ID_S = spj1.ID_S
             GROUP BY spj2.ID_S
             HAVING count(DISTINCT spj2.ID_P) >= 3)
GROUP BY spj1.ID_S
HAVING count(*) >= 4;

-- Exercise 8
SELECT spj1.ID_S
FROM spj spj1
    JOIN j ON spj1.ID_J = j.ID_J
WHERE EXISTS(SELECT *
             FROM spj spj2
                JOIN p ON spj2.ID_P = p.ID_P
             WHERE spj2.ID_S = spj1.ID_S
             GROUP BY spj2.ID_S
                HAVING count(DISTINCT p.CITY) >= 2)
GROUP BY spj1.ID_S
    HAVING count(DISTINCT j.CITY) >= 3;