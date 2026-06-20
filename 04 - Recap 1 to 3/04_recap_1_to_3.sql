-- Exercice 1
SELECT DISTINCT p.Nom
FROM Personne p
WHERE p.Age > 30;

-- Exercice 2
SELECT DISTINCT p.Nom
FROM Personne p
WHERE p.Age < 30
  AND p.Sexe = 'F';

-- Exercice 3
SELECT m.ID_Message
FROM Message m
WHERE m.Expediteur = "P1"

-- Exercice 4
SELECT DISTINCT p.Nom
FROM personne p
WHERE p.Sexe = "M"
    ORDER BY p.Nom ASC

-- Exercice 5
SELECT DISTINCT m.Contenu
FROM Message m
    JOIN Personne p ON m.Expediteur = p.SSN
WHERE p.Sexe = 'H'

-- Exercice 6
SELECT DISTINCT p.Nom
FROM Personne p
    JOIN Destinataires d ON p.SSN = d.Destinataires
WHERE t.ID_Message = 'M4'

-- Exercice 7
SELECT DISTINCT m.Contenu
FROM Message m
    JOIN Destinataires d ON m.ID_Message = d.ID_Message
    JOIN Personne p ON p.SSN = d.Destinataire
WHERE p.Sexe = 'F'
    AND p.Age < 30

-- Exercice 8
SELECT DISTINCT p.Nom
FROM Personne p JOIN EstAmi ea ON p.SSN = ea.SSN2
WHERE ea.SSN1 = 'P1'