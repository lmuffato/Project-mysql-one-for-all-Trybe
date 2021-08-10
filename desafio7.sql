USE SpotifyClone;
CREATE VIEW perfil_artistas AS
SELECT SingerName AS artista,
AlbumName AS album,
COUNT(UserID) AS seguidores
FROM SINGERS AS sgr
INNER JOIN
ALBUNS AS alb
INNER JOIN
SINGER_FOLLOWERS as sf
ON
sgr.SingerID = alb.SingerID
AND
alb.SingerID = sf.SingerID
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
