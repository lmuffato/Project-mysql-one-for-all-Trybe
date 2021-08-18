DELIMITER $ $ CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT) RETURNS INT READS SQL DATA BEGIN DECLARE contador INT;
SELECT
  COUNT(usuario_id)
FROM
  SpotifyClone.HISTORICOS
WHERE
  usuario_id = id_usuario INTO contador;
RETURN contador;
END $ $ DELIMITER;
