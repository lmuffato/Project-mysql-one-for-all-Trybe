CREATE VIEW top_3_artistas AS  SELECT
    DISTINCT a.name AS 'artista',
    COUNT(a.id) AS 'seguidores' 
FROM
    SpotifyClone.follow_artists AS f 
INNER JOIN
    SpotifyClone.artists AS a 
        ON a.id = f.ArtistId 
GROUP BY
    a.id 
ORDER BY
    seguidores DESC,
    artista LIMIT 3;
