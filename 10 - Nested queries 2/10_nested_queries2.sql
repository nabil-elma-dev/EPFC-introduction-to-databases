-- script used: facebook_mysql.sql

SET GLOBAL SQL_MODE = CONCAT(@@SQL_MODE, ',ONLY_FULL_GROUP_BY');

SELECT * FROM Message;

-- Exercise 1
SELECT DISTINCT m.Contenu
FROM Message m
WHERE m.Expediteur IN (SELECT p.SSN
                       FROM Personne p
                       WHERE lower(p.Sexe) = 'm');

-- Exercise 2
SELECT DISTINCT p.Nom
FROM Personne p
WHERE p.SSN IN (SELECT d.Destinataire
                FROM Destinataires d
                WHERE lower(d.ID_Message) = 'm4');

-- Exercise 3
SELECT DISTINCT m.Contenu
FROM Message m
WHERE m.ID_Message IN (SELECT d.ID_Message
                       FROM Destinataires d
                       WHERE d.Destinataire IN (SELECT p.SSN
                                                FROM Personne p
                                                WHERE lower(p.Sexe) ='f'
                                                AND p.Age < 30)
                       );

-- Exercise 4
SELECT DISTINCT p.Nom
FROM Personne p
WHERE p.SSN IN (SELECT ea.SSN2
                FROM EstAmi ea
                WHERE lower(ea.SSN1) = 'p1');

-- Exercise 5
SELECT p.*
FROM Personne p
WHERE p.SSN IN (SELECT DISTINCT ea2.SSN2
                FROM EstAmi ea2
                    JOIN EstAmi ea1 ON ea1.SSN2 = ea2.SSN1
                WHERE lower(ea1.SSN1) = 'p1');

-- Exercise 6
SELECT p.*
FROM Personne p
WHERE p.SSN IN (SELECT DISTINCT ea2.SSN2
                FROM EstAmi ea2
                         JOIN EstAmi ea1 ON ea1.SSN2 = ea2.SSN1
                WHERE lower(ea1.SSN1) IN (SELECT px.SSN
                                          FROM Personne px
                                          where lower(px.Nom)) = 'xavier');

-- Exercise 7
SELECT p.*
FROM Personne p
WHERE p.SSN IN (
    SELECT DISTINCT m.Expediteur
    FROM Message m
    WHERE m.ID_Message IN (SELECT d.ID_Message
                           FROM Destinataires d
                           WHERE d.Destinataire IN (SELECT p.SSN
                                                    FROM Personne p
                                                    WHERE lower(p.Sexe) = 'f')
    )
)

    INTERSECT

SELECT p.*
FROM Personne p
WHERE p.SSN IN (SELECT DISTINCT d.Destinataire
                FROM Destinataires d
                WHERE ID_Message IN (SELECT m.ID_Message
                                     FROM Message m
                                     WHERE m.Expediteur IN (SELECT p.SSN
                                                            FROM Personne p
                                                            WHERE lower(p.Sexe) = 'm')
                                     )
                );