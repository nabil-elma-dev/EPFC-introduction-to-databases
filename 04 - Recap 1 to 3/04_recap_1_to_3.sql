-- script used: facebook_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT DISTINCT p.Nom
FROM Personne p
WHERE p.Age > 30;

-- Exercise 2
SELECT DISTINCT p.Nom
FROM Personne p
WHERE p.Age < 30
  AND p.Sexe = 'F';

-- Exercise 3
SELECT m.ID_Message
FROM Message m
WHERE m.Expediteur = 'P1';

-- Exercise 4
SELECT DISTINCT p.Nom
FROM Personne p
WHERE p.Sexe = 'M'
    ORDER BY p.Nom;

-- Exercise 5
SELECT DISTINCT m.Contenu
FROM Message m
    JOIN Personne p ON m.Expediteur = p.SSN
WHERE p.Sexe = 'H';

-- Exercise 6
SELECT DISTINCT p.Nom
FROM Personne p
    JOIN Destinataires d ON p.SSN = d.Destinataire
WHERE d.ID_Message = 'M4';

-- Exercise 7
SELECT DISTINCT m.Contenu
FROM Message m
    JOIN Destinataires d ON m.ID_Message = d.ID_Message
    JOIN Personne p ON p.SSN = d.Destinataire
WHERE p.Sexe = 'F'
    AND p.Age < 30;

-- Exercise 8
SELECT DISTINCT p.Nom
FROM Personne p
    JOIN EstAmi ea ON p.SSN = ea.SSN2
WHERE ea.SSN1 = 'P1';

-- Exercise 9
SELECT DISTINCT m.Contenu
FROM Message m
    JOIN Personne p ON m.Expediteur = p.SSN
WHERE p.Nom LIKE '%p%';

-- Exercise 10
SELECT DISTINCT m.Contenu
FROM Message m
    JOIN Destinataires d ON m.ID_Message = d.ID_Message
    JOIN Personne p ON p.SSN = d.Destinataire
WHERE p.Nom LIKE 'M%'
    and p.Sexe = 'F';

-- Exercise 11
SELECT DISTINCT m.Contenu
FROM Message m
    JOIN Personne p ON m.Expediteur = p.SSN
WHERE p.Sexe = 'M'
    AND p.Nom LIKE '_a%';

-- Exercise 12
SELECT DISTINCT exp.Nom
FROM Message m
    JOIN Destinataires d ON m.ID_Message = d.ID_Message
    JOIN Personne dest ON dest.SSN = d.Destinataire
    JOIN Personne exp ON exp.SSN = m.Expediteur
WHERE dest.Age < 18;

-- Exercise 13
SELECT DISTINCT ea2.SSN2
FROM EstAmi ea2
    JOIN EstAmi ea1 ON ea1.SSN2 = ea2.SSN1
WHERE ea1.SSN1 = 'P1';

-- Exercise 14
SELECT DISTINCT ea2.SSN2
FROM EstAmi ea2
    JOIN EstAmi ea1 ON ea1.SSN2 = ea2.SSN1
    JOIN Personne p ON p.SSN = ea1.SSN1
WHERE p.Nom = 'Xavier';

-- Exercise 15
-- All pairs
SELECT DISTINCT p1.Nom, p2.Nom
FROM Personne p1
    JOIN Personne p2 ON p1.SSN = p2.SSN
WHERE p1.Sexe != p2.Sexe;

-- Friends
SELECT DISTINCT p1.Nom, p2.Nom
FROM Personne p1
    JOIN Personne p2 ON p1.SSN = p2.SSN
    JOIN EstAmi ea ON p1.SSN = ea.SSN1
        AND p2.SSN = ea.SSN2
WHERE p1.Sexe != p2.Sexe;

-- Exercise 16
-- All pairs
SELECT DISTINCT p1.Nom, p2.Nom
FROM Personne p1
         JOIN Personne p2 ON p1.SSN = p2.SSN
WHERE p1.Sexe != p2.Sexe
ORDER BY (p1.Age + p2.Age);

-- Friends
SELECT DISTINCT p1.Nom, p2.Nom
FROM Personne p1
    JOIN Personne p2 ON p1.SSN = p2.SSN
    JOIN EstAmi ea ON p1.SSN = ea.SSN1
        AND p2.SSN = ea.SSN2
WHERE p1.Sexe != p2.Sexe
ORDER BY (p1.Age + p2.Age);