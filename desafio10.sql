USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id_params INT)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE usuario_reproducao_quantidade INT;
SELECT COUNT(cancao_id)
FROM SpotifyClone.historico_reproducao AS h
WHERE h.usuario_id IN (
  SELECT usuario_id
  FROM SpotifyClone.usuario AS u
  WHERE u.usuario_id = h.usuario_id
  AND u.usuario_id = usuario_id_params
)
INTO usuario_reproducao_quantidade;
RETURN usuario_reproducao_quantidade;
END $$

DELIMITER ;