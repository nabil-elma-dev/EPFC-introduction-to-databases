-- Exercise 1
SELECT m.date
FROM matches m
    JOIN participations p ON m.match_id = p.match_id
    JOIN teams t ON p.team_id = t.team_id
WHERE lower(m.type) = 'p'
    AND lower(t.team_name) IN ('france', 'morocco');

-- Exercise 2
SELECT t_a.team_name,
       t_b.team_name,
       t_a.pool
FROM participations p_a
    JOIN teams t_a ON p_a.team_id = t_a.team_id
    JOIN participations p_b ON p_a.match_id = p_b.match_id
    JOIN teams t_b ON p_b.team_id = t_b.team_id
WHERE t_a.pool = t_b.pool
    AND p_a.team_id < p_b.team_id
    AND p_a.points = 1;
