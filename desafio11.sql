CREATE VIEW cancoes_premium AS
    SELECT 
        so.song_name AS nome, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.users AS us
            INNER JOIN
        SpotifyClone.historic AS hi ON us.user_id = hi.user_id
            INNER JOIN
        SpotifyClone.songs AS so ON hi.song_id = so.song_id
    WHERE
        us.plan_id <> 1
    GROUP BY so.song_id
    ORDER BY nome ASC;
