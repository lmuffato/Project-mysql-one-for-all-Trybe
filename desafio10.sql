USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(identificador INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT COUNT(reproducoes.usuario_id)
FROM SpotifyClone.reproducoes AS reproducoes
WHERE reproducoes.usuario_id = identificador
INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$
DELIMITER ;

-- Conteúdo do Bloco 21.3 do Course
