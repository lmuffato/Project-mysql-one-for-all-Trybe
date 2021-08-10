USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN singName VARCHAR(100))
BEGIN
SELECT s.SingerName AS artista,
a.AlbumName AS album
FROM SINGERS AS s
INNER JOIN
ALBUNS AS a
ON
s.SingerID = a.SingerID
WHERE singName = s.SingerName
ORDER BY `album`;
END $$
DELIMITER ;
