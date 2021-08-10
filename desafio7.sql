CREATE VIEW perfil_artistas AS
SELECT SingerName AS artista,
AlbumName AS album,
COUNT(UserID) AS seguidores
FROM SpotifyClone.SINGERS AS sgr
INNER JOIN
SpotifyClone.ALBUNS AS alb
INNER JOIN
SpotifyClone.SINGER_FOLLOWERS as sf
ON
sgr.SingerID = alb.SingerID
AND
alb.SingerID = sf.SingerID
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
