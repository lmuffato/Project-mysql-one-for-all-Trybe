DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE music_total INT;
  SELECT
    COUNT(*)
  FROM
    SpotifyClone.listaReproducao
  WHERE
    usuario_id = id INTO music_total ;
  RETURN music_total;
END $$

DELIMITER ;
