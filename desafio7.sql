CREATE VIEW perfil_artistas AS
    SELECT
        art.artist_name AS artista,
        alb.album_name AS album,
        (SELECT
                COUNT(f.user_id)
            FROM
                SpotifyClone.followers f
            WHERE
                f.artist_id = alb.artist_id) AS seguidores
    FROM
        SpotifyClone.albums alb
            INNER JOIN
        SpotifyClone.artists art ON art.artist_id = alb.artist_id
    ORDER BY seguidores DESC , artista , album;
