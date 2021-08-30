CREATE VIEW top_3_artistas AS  SELECT
    DISTINCT art.artista AS 'artista',
    COUNT(art.artista_id) AS 'seguidores' 
FROM
    SpotifyClone.follow_artistas AS foll 
INNER JOIN
    SpotifyClone.artistas AS art 
        ON art.artista_id = foll.Artist_id 
GROUP BY
    art.artista_id 
ORDER BY
    seguidores DESC,
    artista LIMIT 3;
