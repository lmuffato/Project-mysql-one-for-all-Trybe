DELIMITER $$;

CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(40))
BEGIN
SELECT a.nome AS artista, al.nome AS album
FROM SpotifyClone.Artistas AS a
INNER JOIN SpotifyClone.Albuns AS al
ON al.Artista_ID = a.Artista_ID
WHERE a.nome = artista
ORDER BY album;
END $$;

DELIMITER ;
