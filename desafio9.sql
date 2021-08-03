DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN name VARCHAR(100))
BEGIN
SELECT ar.artist_name 'artista',
al.album 'album'
FROM SpotifyClone.Artists ar
INNER JOIN SpotifyClone.Albums al
ON ar.artist_id = al.artist_id
GROUP BY ar.artist_name, al.album
HAVING ar.artist_name = name
ORDER BY al.album ASC;
END$$

DELIMITER ;

-- CALL albuns_do_artista('Walter Phoenix');
