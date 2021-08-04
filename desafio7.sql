CREATE VIEW perfil_artistas AS
    SELECT
a.artist_name AS artista,
b.album_name AS album,
        COUNT(c.artist_id) AS seguidores
    FROM SpotifyClone.artists a INNER JOIN SpotifyClone.albums b
    ON a.artist_id = b.artist_id
    INNER JOIN SpotifyClone.followers c
    ON a.artist_id = c.artist_id
    GROUP BY 1, 2
    ORDER BY 3 DESC, 1, 2;
