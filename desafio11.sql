-- DROP VIEW cancoes_premium;

CREATE VIEW cancoes_premium AS
    SELECT 
        s.song AS nome, COUNT(r.user_id) AS reproducoes
    FROM
        SpotifyClone.reproduction_history AS r
            INNER JOIN
        SpotifyClone.songs AS s ON s.song_id = r.song_id
            INNER JOIN
        SpotifyClone.users AS u ON r.user_id = u.user_id
    WHERE
        u.flat_id = 2 OR u.flat_id = 3
    GROUP BY r.song_id
    ORDER BY 1;

-- SELECT *  FROM cancoes_premium;
