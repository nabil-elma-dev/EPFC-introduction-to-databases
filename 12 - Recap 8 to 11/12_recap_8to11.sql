-- Script used: hamburger_mysql.sql
SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT DISTINCT p.Nom,
                p.Poids
FROM Personne p
WHERE p.Age < 32
AND p.ID IN (SELECT m.ID_P
            FROM Mange m
            WHERE m.ID_H IN (SELECT h.ID
                            FROM Hamburger h
                            WHERE lower(h.Genre) = 'boeuf'
                                AND h.Calories > 1000));

-- Exercise 2
SELECT DISTINCT p.Nom,
                p.Age
FROM Personne p
    JOIN Mange m ON p.ID = m.ID_P
    JOIN Hamburger h ON m.ID_H = h.ID
WHERE p.Poids > 60
    AND lower(p.Sexe) = 'm'
    AND lower(h.genre) = 'poulet'
    AND m.Note < 7;

-- Exercise 3
SELECT h.Nom,
       avg(m.Note)
FROM Hamburger h
    JOIN Mange m ON h.ID = m.ID_H
GROUP BY h.ID,
         h.Nom
    HAVING count(DISTINCT m.ID_P) >=3;

-- Exercise 4
SELECT h.Nom,
       count(DISTINCT m.ID_P)
FROM Hamburger h
    JOIN Mange m ON h.ID = m.ID_H
GROUP BY h.ID,
         h.Nom
HAVING avg(m.Note) >= 6;

-- Exercise 5
SELECT DISTINCT p.Nom,
                p.Sexe
FROM Personne p
WHERE exists(SELECT *
            FROM Mange m
            WHERE m.ID_P = p.ID
            GROUP BY m.ID_P, m.ID_H
                HAVING count(*) >=3
            );