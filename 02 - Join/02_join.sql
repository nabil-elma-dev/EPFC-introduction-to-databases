-- Exercise 1
SELECT spj.ID_J
FROM spj JOIN p ON spj.ID_P = p.ID_P
WHERE p.COLOR = 'Red';

-- Exercise 2
SELECT DISTINCT s.SNAME
FROM s
         JOIN spj ON s.ID_S = spj.ID_S
WHERE spj.ID_P = 'P4';

-- Exercise 3
SELECT DISTINCT j.JNAME
FROM j
         JOIN spj ON j.ID_J = spj.ID_J
WHERE spj.ID_P = 'P3';

-- Exercise 4
SELECT DISTINCT j.JNAME
FROM j
         JOIN spj ON spj.ID_J = j.ID_J
WHERE spj.ID_S = 'S1';

-- Exercise 5
SELECT DISTINCT s.SNAME
FROM s
         JOIN spj ON spj.ID_S = s.ID_S
WHERE spj.QTY BETWEEN 150 AND 250;

-- Exercise 6
SELECT DISTINCT s.SNAME NOM,
                p.PNAME PIECE,
                j.JNAME PROJET,
                spj.QTY
FROM spj
         JOIN s ON s.ID_S = spj.ID_S
         JOIN p ON p.ID_P = spj.ID_P
         JOIN j ON j.ID_J = spj.ID_J;

-- Exercise 7
SELECT DISTINCT s.SNAME NOM,
                p.PNAME PIECE,
                j.JNAME PROJET,
                spj.QTY
FROM spj
         JOIN s ON s.ID_S = spj.ID_S
         JOIN p ON p.ID_P = spj.ID_P
         JOIN j ON j.ID_J = spj.ID_J
WHERE s.CITY = 'Paris';

-- Exercise 8
SELECT DISTINCT j.CITY
FROM j
         JOIN spj ON j.ID_J = spj.ID_J
         JOIN s ON spj.ID_S = s.ID_S
WHERE s.SNAME = 'Adams';

-- Exercise 9
SELECT p.PNAME
FROM p
         JOIN spj ON p.ID_P = spj.ID_P
         JOIN s ON s.ID_S = spj.ID_S
WHERE p.WEIGHT < 18
  AND s.CITY IN ('Rome', 'London');

-- Exercise 10
SELECT p.ID_P
FROM p
         JOIN spj ON spj.ID_P = p.ID_P
         JOIN s ON s.ID_S = spj.ID_S
WHERE p.CITY = 'London'
  AND s.CITY = 'London';