-- challenge 10;

USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(pessoa_usuaria VARCHAR(60))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE usuario INT;
  SELECT COUNT(cancao_id) AS quantidade_musicas_no_historico FROM SpotifyClone.historico_reproducoes AS historico
  INNER JOIN SpotifyClone.usuarios AS usuarios
  ON historico.usuario_id=usuarios.usuario_id
  WHERE nome_do_usuario=pessoa_usuaria INTO usuario;
  RETURN usuario;
END $$

DELIMITER ;
