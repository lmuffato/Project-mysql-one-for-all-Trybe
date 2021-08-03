CREATE VIEW cancoes_premium AS
    SELECT 
        songs.songs_name AS nome,
        COUNT(songs.songs_name) AS reproducoes
    FROM
        SpotifyClone.songs
            JOIN
        SpotifyClone.`history` ON songs.songs_id = `history`.songs_id
            JOIN
        SpotifyClone.users ON `history`.users_id = users.users_id
            JOIN
        SpotifyClone.plan ON users.plan_id = plan.plan_id
            AND plan.plan_id IN (2 , 3)
    GROUP BY nome
    ORDER BY nome;
