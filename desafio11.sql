CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        s.single 'nome', COUNT(h.single_id) 'reproducoes'
    FROM
        SpotifyClone.Users u
            INNER JOIN
        SpotifyClone.History h ON u.user_id = h.user_id
            INNER JOIN
        SpotifyClone.Singles s ON h.single_id = s.single_id
    WHERE
        plan_id > 1
    GROUP BY s.single
    ORDER BY s.single;
