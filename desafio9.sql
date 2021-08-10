USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist_name varchar(70))
BEGIN
SELECT arts.artist_name AS 'artista',
albs.albuns_name AS 'album'
FROM artists  arts
INNER JOIN albuns  albs
ON albs.artist_id = arts.artist_id AND artist_name = arts.artist_name
ORDER BY `album `ASC;
END $$
DELIMITER ;
