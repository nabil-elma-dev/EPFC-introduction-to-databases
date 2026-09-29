SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT spj.ID_J,
    sum(spj.QTY)
FROM spj
    JOIN j ON spj.ID_J = j.ID_J
WHERE lower(j.CITY) = 'athens'
GROUP BY spj.ID_J
HAVING sum(spj.QTY) > 1000;

-- Exercise 2
SELECT spj.ID_P, spj.ID_J
FROM spj
GROUP BY spj.ID_P, spj.ID_J
    HAVING avg(spj.QTY) > 320;

-- Exercise 3
SELECT spj.ID_S
FROM spj
GROUP BY spj.ID_S, spj.ID_P
HAVING count(distinct spj.ID_J) >= 3;