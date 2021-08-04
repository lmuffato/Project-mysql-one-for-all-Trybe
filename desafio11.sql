CREATE VIEW cancoes_premium AS
    SELECT 
        s.song_name AS nome, COUNT(r.song_id) AS reproducoes
    FROM
        SpotifyClone.songs s
            INNER JOIN
        SpotifyClone.reproductions r ON s.song_id = r.song_id
    WHERE
        EXISTS( SELECT 
                *
            FROM
                SpotifyClone.plans p
                    INNER JOIN
                SpotifyClone.users u ON p.plan_id = u.plan_id
            WHERE
                u.user_id = r.user_id
                    AND (p.plan_name = 'familiar'
                    OR p.plan_name = 'universitário'))
    GROUP BY nome
    ORDER BY nome;
