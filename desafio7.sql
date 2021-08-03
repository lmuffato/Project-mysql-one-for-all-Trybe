CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name AS 'artista',
        al.album_name AS 'album',
        COUNT(fo.user_id) AS 'seguidores'
    FROM
        SpotifyClone.followers AS fo
            INNER JOIN
        SpotifyClone.artists AS ar ON fo.artist_id = ar.artist_id
            INNER JOIN
        SpotifyClone.albums AS al ON ar.artist_id = al.artist_id
    GROUP BY al.album_id
    ORDER BY seguidores DESC , artista ASC , album ASC;
