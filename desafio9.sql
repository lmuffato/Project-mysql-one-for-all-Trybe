-- Crie uma procedure chamada albuns_do_artista que recebe como parâmetro o nome de uma pessoa 
-- artista e em retorno deve exibir as seguintes colunas:
-- O nome da pessoa artista, com o alias "artista".

-- O nome do álbum, com o alias "album".

-- Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

USE SpotifyClone; 
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(100)) 
BEGIN 
	SELECT per.singer_name AS artista,
    al.title AS album
    FROM performers AS per
    INNER JOIN albums AS al ON per.singer_id = al.singer_id
    WHERE singer_name LIKE artistName
    ORDER BY album;
END $$

DELIMITER ; 
