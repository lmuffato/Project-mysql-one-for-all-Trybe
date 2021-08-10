USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist)
BEGIN
SELECT arts.artist_name AS 'artista',
albs.albuns_name AS 'album'
FROM artists as arts
INNER JOIN albums as albs
ON albs.artist_id = arts.artist_id AND nome_artista = arts.artist_name
ORDER BY albs.albuns_name ASC;
END $$
DELIMITER ;
