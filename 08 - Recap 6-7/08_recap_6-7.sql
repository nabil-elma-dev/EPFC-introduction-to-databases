-- script used: facebook.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT count(DISTINCT m.Expediteur)
FROM message m
WHERE LOWER(m.ID_Message) = 'm2';

-- Exercise 2
SELECT min(p.Age)
FROM personne p;

-- Exercise 3
SELECT max(m.Date_Expedition)
FROM message m;

-- Exercise 4
SELECT count(*)
FROM personne p
WHERE p.Age < 30;

-- Exercise 5
SELECT avg(p.Age)
FROM personne p
WHERE lower(p.Sexe) = 'f';

-- Exercise 6
SELECT count(*) / count(distinct m.ID_Message)
FROM message m
    JOIN destinataires d ON m.ID_Message = d.ID_Message;

-- Exercise 7
SELECT p.Sexe,
       count(*)
FROM personne p
GROUP BY p.Sexe;

-- Exercise 8
SELECT ea.SSN1,
       count(*)
FROM estami ea
WHERE lower(ea.SSN1) IN ('p1', 'p2')
GROUP BY ea.SSN1;