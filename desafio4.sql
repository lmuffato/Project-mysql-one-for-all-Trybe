CREATE VIEW top_3_artistas AS
    SELECT
        a.artist_name AS artista,
        (SELECT
                COUNT(*)
            FROM
                SpotifyClone.followers f
            WHERE
                f.artist_id = a.artist_id) AS seguidores
    FROM
        SpotifyClone.followers f
            INNER JOIN
        SpotifyClone.artists a ON a.artist_id = f.artist_id
    GROUP BY artista , seguidores
    ORDER BY seguidores DESC , artista
    LIMIT 3;
