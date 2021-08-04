USE SpotifyClone;
DELIMITER $$;

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT a.nome AS 'artista', al.nome_album AS 'album'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = a.id
WHERE a.nome = artista;
END $$;
DELIMITER ;
