CREATE VIEW perfil_artistas AS
    SELECT 
        art.`name` AS `artista`,
        alb.`name` AS `album`,
        COUNT(*) AS `seguidores`
    FROM
        SpotifyClone.artists AS art
            INNER JOIN
        SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
            INNER JOIN
        SpotifyClone.following_artists AS fol ON fol.artist_id = art.artist_id
    GROUP BY alb.album_id
    ORDER BY `seguidores` DESC , `artista` ASC , `album` ASC;
