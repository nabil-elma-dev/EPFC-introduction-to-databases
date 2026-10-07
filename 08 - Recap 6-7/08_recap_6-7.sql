-- script used: facebook.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

-- Exercise 1
SELECT count(DISTINCT m.Expediteur)
FROM Message m
WHERE LOWER(m.ID_Message) = 'm2';

-- Exercise 2
SELECT min(p.Age)
FROM Personne p;

-- Exercise 3
SELECT max(m.Date_Expedition)
FROM Message m;

-- Exercise 4
SELECT count(*)
FROM Personne p
WHERE p.Age < 30;

-- Exercise 5
SELECT avg(p.Age)
FROM Personne p
WHERE lower(p.Sexe) = 'f';

-- Exercise 6
SELECT count(*) / count(distinct m.ID_Message)
FROM Message m
    JOIN Destinataires d ON m.ID_Message = d.ID_Message;

-- Exercise 7
SELECT p.Sexe,
       count(*)
FROM Personne p
GROUP BY p.Sexe;

-- Exercise 8
SELECT ea.SSN1,
       count(*)
FROM EstAmi ea
WHERE lower(ea.SSN1) IN ('p1', 'p2')
GROUP BY ea.SSN1;

-- Exercise 9
SELECT ea.SSN1
FROM EstAmi ea
GROUP BY ea.SSN1
    HAVING count(*) <= 2;

-- Exercise 9-bis
SELECT p.Nom,
       ea.SSN1
FROM EstAmi ea
    JOIN Personne p ON ea.SSN1 = p.SSN
GROUP BY ea.SSN1,
         p.Nom
    HAVING count(*) <= 2;

-- Exercise 10
SELECT d.ID_Message,
       count(*) as nb_messages
FROM Destinataires d
GROUP BY d.ID_Message;

-- Exercise 10-bis
SELECT d.ID_Message,
       m.Contenu,
       count(*) as nb_messages
FROM Destinataires d
    JOIN Message m ON d.ID_Message = m.ID_Message
GROUP BY d.ID_Message,
         m.Contenu;

-- Exercise 10-ter
SELECT d.ID_Message,
       m.Contenu,
       p.Nom as Expediteur,
       count(*) as nb_messages
FROM Destinataires d
    JOIN facebook.Message m ON d.ID_Message = m.ID_Message
    JOIN Personne p ON p.SSN = m.Expediteur
GROUP BY d.ID_Message,
         m.Contenu,
         p.Nom;

-- Exercise 11
SELECT d.ID_Message
FROM Destinataires d
GROUP BY d.ID_Message
    HAVING count(*) >= 2;

-- Exercise 12
SELECT p.Nom
FROM Personne p
    JOIN Message m on p.SSN = m.Expediteur
WHERE lower(p.Sexe) = 'f'
GROUP BY p.SSN
    HAVING count(*) = 1;

-- Exercise 13
SELECT p.Sexe,
       count(*)
FROM Message m
    JOIN Destinataires d ON m.ID_Message = d.ID_Message
    JOIN Personne p ON d.Destinataire = p.SSN
GROUP BY p.Sexe;

-- Exercise 14
SELECT p.Nom,
       m.Contenu
FROM Message m
    JOIN Personne p ON m.Expediteur = p.SSN
    JOIN Destinataires d ON m.ID_Message = d.ID_Message
GROUP BY p.SSN, p.Nom, m.ID_Message, m.Contenu
HAVING count(distinct d.Destinataire) = 1;