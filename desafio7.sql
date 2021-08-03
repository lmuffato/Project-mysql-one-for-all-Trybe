CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name 'artista',
        al.album,
        COUNT(f.artist_id) 'seguidores'
    FROM
        SpotifyClone.Artists ar
            INNER JOIN
        SpotifyClone.Albums al ON ar.artist_id = al.artist_id
            INNER JOIN
        SpotifyClone.Following f ON ar.artist_id = f.artist_id
    GROUP BY al.album , ar.artist_name
    ORDER BY COUNT(f.artist_id) DESC , ar.artist_name ASC, al.album ASC;
