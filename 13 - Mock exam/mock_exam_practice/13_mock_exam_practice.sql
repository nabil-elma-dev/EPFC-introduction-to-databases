-- Exercise 1

SELECT DISTINCT mv.Titre,
                tech.Nom
FROM film mv
    JOIN contrat c ON c.IdFilm = mv.IdFilm
    JOIN technicien tech ON c.IdTechnicien = tech.IdTechnicien
WHERE lower(tech.Nat) = 'be'
    AND (c.IdMetier IN (SELECT task.IdMetier
                        FROM metier task
                        WHERE task.PrixHeure < 40)
    OR c.IdFilm IN (SELECT mv.IdFilm
               FROM film mv
               WHERE mv.AnneeProd > 2017)
    );

-- Exercise 2
SELECT DISTINCT c1.IdFilm, c2.IdFilm
FROM contrat c1
    JOIN contrat c2 ON c1.IdTechnicien = c2.IdTechnicien
WHERE c1.IdFilm < c2.IdFilm
    AND c1.IdMetier = c2.IdMetier;

-- Exercise 3
SELECT mv.*
FROM film mv
WHERE mv.IdFilm IN (
    SELECT c.IdFilm
    FROM contrat c
)
  AND mv.IdFilm NOT IN (
    SELECT c.IdFilm
    FROM contrat c
        JOIN technicien t ON c.IdTechnicien = t.IdTechnicien
    WHERE lower(t.Nat) != 'be');

-- Exercise 4
SELECT tech.Nom, max(c.NbJours), min(c.NbJours)
FROM technicien tech
    JOIN contrat c ON tech.IdTechnicien = c.IdTechnicien
GROUP BY tech.Nom, c.IdTechnicien

-- Exercise 5
