-- exercise 1
/*
a)  SELECT  id_p,
        SUM(weight)
    FROM p
    GROUP BY color
Illegal: id_p on Select does not appear on GROUP BY

b)  SELECT  id_s,
            SUM(qty)
    FROM spj
Illegal: SUM(qty) cannon be applied to multple id_s

c) SELECT id_p,
          weight
FROM p
GROUP BY id_p
Legal 👍
*/

-- exercise 2-1
SELECT spj.QTY,
    COUNT(*) nb_delivery
FROM spj
GROUP BY spj.QTY;

-- exercise 2-2
SELECT spj.ID_S,
    COUNT(*) nb_delivery
FROM spj
GROUP BY spj.ID_S;

-- exercise 2-3
SELECT j.JNAME,
       SUM(spj.QTY) total_quantity
FROM spj
    JOIN j ON spj.ID_J = j.ID_J
GROUP BY spj.ID_J

-- exercise 2-4
SELECT spj.ID_S,
       spj.ID_P,
       spj.ID_J,
       QTY * WEIGHT total_weight
FROM spj
    JOIN p ON spj.ID_P = p.ID_P;

-- exercise 2-5
SELECT spj.ID_J,
       SUM(QTY * WEIGHT) total_weight
FROM spj
    JOIN p ON spj.ID_P = p.ID_P
GROUP BY spj.ID_J;

-- exercise 2-6
SELECT MAX(spj.QTY * p.WEIGHT) heaviest_delivery
FROM spj
    JOIN p ON spj.ID_P = p.ID_P;

-- exercise 2-7
SELECT spj.ID_P,
       spj.ID_J,
       SUM(qty) total
FROM spj
GROUP BY spj.ID_P,
         spj.ID_J;