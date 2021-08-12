CREATE VIEW top_3_artistas AS (
    SELECT a.name artista,
    COUNT(f.user_id) seguidores
    FROM 
        SpotifyClone.follow_artist f
    INNER JOIN SpotifyClone.artists a 
        USING (artist_id) 
    GROUP BY 
        a.artist_id
    ORDER BY 
        2 DESC, 1
    LIMIT 3
);
