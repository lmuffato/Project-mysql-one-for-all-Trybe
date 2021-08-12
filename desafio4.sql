CREATE VIEW top_3_artistas AS
    SELECT A.artist_name artista,
    COUNT(F.user_id) seguidores
FROM 
    SpotifyClone.follower f
INNER JOIN SpotifyClone.artists a 
USING (artist_id) 
GROUP BY 
    a.artist_id
ORDER BY 
    2 DESC, 1
LIMIT 3;
