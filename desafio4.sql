CREATE VIEW top_3_artistas AS
    SELECT 
        a.`name` AS `artista`, COUNT(*) AS `seguidores`
    FROM
        SpotifyClone.artists AS a
            INNER JOIN
        SpotifyClone.following_artists AS fa ON fa.artist_id = a.artist_id
    GROUP BY a.artist_id
    ORDER BY `seguidores` DESC , `artista` ASC
    LIMIT 3;
