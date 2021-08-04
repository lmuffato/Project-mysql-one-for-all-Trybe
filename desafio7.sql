-- DROP VIEW perfil_artistas;

CREATE VIEW perfil_artistas AS
    SELECT 
        a.artist AS artista,
        ab.album AS album,
        COUNT(f.user_id) AS seguidores
    FROM
        SpotifyClone.artists AS a
            INNER JOIN
        SpotifyClone.following_artists AS f ON a.artist_id = f.artist_id
            INNER JOIN
        SpotifyClone.albums AS ab ON a.artist_id = ab.artist_id
    GROUP BY 1 , 2
    ORDER BY 3 DESC , 1
;

-- SELECT * FROM perfil_artistas;
