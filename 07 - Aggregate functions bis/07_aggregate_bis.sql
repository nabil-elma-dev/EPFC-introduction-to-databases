SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT spj.ID_J,
    sum(spj.QTY)
FROM spj
    JOIN j ON spj.ID_J = j.ID_J
where lower(j.CITY) = 'athens'
GROUP BY spj.ID_J
HAVING sum(spj.QTY) > 1000