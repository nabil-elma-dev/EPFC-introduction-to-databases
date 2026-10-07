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

-- Exercise 8
SELECT p.*
FROM Personne p
WHERE p.SSN not IN (SELECT m.Expediteur
                    FROM Message m);

-- Exercise 9
SELECT p.*
FROM Personne p
WHERE p.SSN not IN (SELECT d.Destinataire
                    FROM Destinataires d);

-- Exercise 10
SELECT p.*
FROM Personne p
WHERE p.SSN not IN (SELECT m.Expediteur
                    FROM Message m
                    WHERE m.ID_Message IN (SELECT d.ID_Message
                                           FROM Destinataires d
                                           WHERE d.Destinataire IN (SELECT p_dest.SSN
                                                                    FROM Personne p_dest
                                                                    WHERE lower(p_dest.Sexe) = 'm')
                                           )
                    );

-- Exercise 11
SELECT m.*
FROM Message m
WHERE m.Date_Expedition >= ALL (SELECT m.Date_Expedition
                                FROM Message m);

-- Exercise 12
SELECT p.*
FROM Personne p
WHERE p.Age <= ALL (SELECT p.Age
                    FROM Personne p);

SELECT p.*
FROM Personne p
WHERE p.Age = (SELECT min(p.Age)
               FROM Personne p);

-- Exercise 13
SELECT m.*
FROM Message m
WHERE m.Date_Expedition > ANY (SELECT m.Date_Expedition
                               FROM Message m );

-- Exercise 14
SELECT p.*
FROM Personne p
WHERE p.SSN in (SELECT ea.SSN1
                FROM EstAmi ea
                GROUP BY ea.SSN1
                HAVING count(*) >= ALL (SELECT count(*)
                                        FROM EstAmi ea
                                        GROUP BY ea.SSN1) )