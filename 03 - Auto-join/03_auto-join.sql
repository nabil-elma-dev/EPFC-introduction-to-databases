-- exercice 1
SELECT DISTINCT p.PNAME
FROM p
WHERE p.PNAME LIKE '%c%';

-- exercice 2
SELECT DISTINCT p.PNAME
FROM p
WHERE (p.WEIGHT * 454) <= 6000;

-- exercice 3
SELECT DISTINCT j.JNAME
FROM j
WHERE j.JNAME LIKE '%i%';

-- exercice 4
SELECT DISTINCT s.SNAME
FROM s
WHERE s.SNAME LIKE 'a%' OR s.SNAME LIKE '%c';

-- exercice 5
SELECT DISTINCT s.SNAME
FROM s
    JOIN spj on s.ID_S = spj.ID_S
WHERE YEAR(spj.DATE_DERNIERE_LIVRAISON) BETWEEN 2015 and 2019;

-- exercice 6
SELECT s.ID_S, p.ID_P, j.ID_J
FROM s,p,j
WHERE s.CITY <> p.CITY
   OR p.CITY <> j.CITY;

-- exercice 7
SELECT DISTINCT spj1.ID_P, spj2.ID_P, spj1.ID_S
FROM SPJ spj1, SPJ spj2
WHERE spj1.ID_S = spj2.ID_S
  AND spj1.ID_P > spj2.ID_P;

-- exercice 8
SELECT s.ID_S, s.CITY, p.ID_P, p.CITY, j.ID_J, j.CITY
FROM s,p,j
WHERE s.CITY <> p.CITY
  AND s.CITY <> j.CITY
  AND p.CITY <> j.CITY;

-- exercice 9
SELECT DISTINCT commande1.ID_S
FROM SPJ commande1
    JOIN SPJ commande2 ON commande1.ID_S =  commande2.ID_S AND commande1.ID_P =  commande2.ID_P
WHERE commande1.ID_J <> commande2.ID_J;