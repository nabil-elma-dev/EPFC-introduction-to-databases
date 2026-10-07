-- script used: facebook_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

SELECT * FROM Message;

-- Exercise 1
SELECT DISTINCT m.Contenu
FROM Message m
WHERE m.Expediteur IN (SELECT p.SSN
                       FROM Personne p
                       WHERE lower(p.Sexe) = 'm');