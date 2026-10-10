-- Exercise 1
SELECT m.date
FROM matches m
    JOIN participations pt ON m.match_id = pt.match_id
    JOIN teams t ON pt.team_id = t.team_id
WHERE lower(m.type) = 'p'
    AND lower(t.team_name) IN ('france', 'morocco');

-- Exercise 2
SELECT t_a.team_name,
       t_b.team_name,
       t_a.pool
FROM participations pt_a
    JOIN teams t_a ON pt_a.team_id = t_a.team_id
    JOIN participations p_b ON pt_a.match_id = p_b.match_id
    JOIN teams t_b ON p_b.team_id = t_b.team_id
WHERE t_a.pool = t_b.pool
    AND pt_a.team_id < p_b.team_id
    AND pt_a.points = 1;

-- Exercise 3
SELECT t.pool
FROM teams t
    JOIN participations pt ON t.team_id = pt.team_id
    JOIN matches m ON m.match_id = pt.match_id
WHERE lower(m.type) = 'p'
    AND pt.points = 3
GROUP BY t.pool
    HAVING count(*) = 4;

-- Exercise 4
SELECT pl.player_name
FROM players pl
WHERE not exists(SELECT *
                 FROM goals g
                    JOIN matches m ON g.match_id = m.match_id
                 WHERE pl.player_id = g.player_id
                    AND lower(m.type) = 'p'
                 );

-- Exercise 5
SELECT p.player_name ,g.player_id, SUM(g.num_goals)
FROM goals g
    JOIN players p ON g.player_id = p.player_id
WHERE lower(g.type) = 'p'
GROUP BY g.player_id
    HAVING SUM(g.num_goals) >= ALL (SELECT SUM(g.num_goals)
                                    FROM goals g
                                    WHERE g.type = 'p'
                                    GROUP BY g.player_id);