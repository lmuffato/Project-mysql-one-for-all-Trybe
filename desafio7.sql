CREATE VIEW perfil_artistas AS
    SELECT
		a.artist_name AS artista,
	    bb.album_name AS album,
        COUNT(c.artist_id) AS seguidores
    FROM SpotifyClone.artists a INNER JOIN SpotifyClone.albums bb
    ON a.artist_id = bb.artist_id
    INNER JOIN SpotifyClone.followers c
    ON a.artist_id = c.artist_id
    GROUP BY artista, album_name
    ORDER BY seguidores DESC, 1, 2;
