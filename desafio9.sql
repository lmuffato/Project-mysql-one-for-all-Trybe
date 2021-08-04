USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT
    artist.artista AS `artista`,
    album.album AS `album`
FROM
SpotifyClone.artistas AS artist
INNER JOIN SpotifyClone.albuns AS album ON artist.artista_id = album.artista_id
WHERE
    artista = nome_artista;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
