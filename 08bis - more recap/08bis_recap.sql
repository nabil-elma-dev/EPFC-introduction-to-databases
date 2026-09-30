-- script used: spj_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT spj.ID_S
FROM spj
GROUP BY spj.ID_S
    HAVING count(*) >= 4;

-- Exercise 2
SELECT spj.ID_S
FROM spj
GROUP BY spj.ID_S
    HAVING count(*) >= 4
        AND count(distinct spj.ID_P) >= 3;

-- Exercise 3
SELECT DISTINCT spj.ID_P
FROM spj
    JOIN s ON spj.ID_S = s.ID_S
    JOIN j ON spj.ID_J = j.ID_J
WHERE lower(s.CITY) = 'london'
    AND lower(j.CITY) = 'london';

-- Exercise 4
SELECT spj.ID_J,
       sum(spj.QTY) as total_qty
FROM spj
GROUP BY spj.ID_J,
         spj.ID_S
HAVING sum(spj.QTY) > 500;

-- Exercise 5
SELECT spj.ID_P,
       spj.ID_J,
       sum(spj.QTY) as TOTAL
FROM spj
GROUP BY spj.ID_P,
         spj.ID_J;

-- Exercise 6
SELECT spj.ID_P,
       count(*) as nb_pieces
FROM spj
GROUP BY spj.ID_P
    HAVING count(*) > 2;

-- Exercise 7
SELECT DISTINCT s.CITY,
                p.CITY
FROM spj
    JOIN p ON spj.ID_P = p.ID_P
    JOIN s ON spj.ID_S = s.ID_S;

-- Exercise 8
SELECT DISTINCT s.SNAME
FROM spj
    JOIN p ON spj.ID_P = p.ID_P
    JOIN s ON spj.ID_S = s.ID_S
WHERE lower(p.COLOR) = 'red'
    AND (lower(p.CITY = 'paris' or lower(s.CITY = 'paris')));

-- Exercise 9
SELECT spj.ID_S,
       avg(spj.QTY) as avg_delivered
FROM spj
    JOIN s ON spj.ID_S = s.ID_S
WHERE lower(s.CITY) = 'london'
GROUP BY spj.ID_S
    HAVING sum(spj.QTY) > 800;

-- Exercise 10
SELECT DISTINCT spj_a.ID_S, spj_b.ID_S
FROM spj spj_a
    JOIN spj spj_b ON spj_a.ID_P = spj_b.ID_P
        AND spj_a.ID_S < spj_b.ID_S
WHERE spj_a.QTY = spj_b.QTY;