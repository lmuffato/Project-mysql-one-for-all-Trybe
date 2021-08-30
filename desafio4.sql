CREATE VIEW top_3_artistas AS  SELECT
    DISTINCT art.artista AS 'artista',
    COUNT(art.artista_id) AS 'seguidores' 
FROM
    SpotifyClone.artistas_seguidos AS seg 
INNER JOIN
    SpotifyClone.artistas AS art 
        ON art.artista_id = seg.Artist_id 
GROUP BY
    art.artista_id 
ORDER BY
    seguidores DESC,
    artista LIMIT 3;
