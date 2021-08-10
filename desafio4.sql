USE SpotifyClone;
CREATE VIEW top_3_artistas AS 
SELECT SingerName AS artista,
COUNT(UserID) AS seguidores
FROM SINGERS AS a
INNER JOIN SINGER_FOLLOWERS AS sf
ON a.SingerID = sf.SingerID
GROUP BY `artista`
ORDER BY `seguidores` DESC,`artista`
LIMIT 3;
