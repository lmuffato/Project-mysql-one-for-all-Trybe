CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist_name 'artista', COUNT(f.user_id) 'seguidores'
    FROM
        SpotifyClone.Following f
            INNER JOIN
        SpotifyClone.Artists a ON f.artist_id = a.artist_id
    GROUP BY a.artist_name
    LIMIT 3;
