CREATE VIEW top_3_artistas AS
SELECT 
a.artist_name artista, 
    COUNT(DISTINCT ca.customer_id) seguidores
FROM 
SpotifyClone.customer_artist AS ca
INNER JOIN 
SpotifyClone.artist as a
ON ca.artist_id = a.artist_id
GROUP BY 
a.artist_id
ORDER BY 1, 2 LIMIT 3;
