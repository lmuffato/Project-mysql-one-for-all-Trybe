DELIMITER $$

CREATE PROCEDURE quantidade_musicas_no_historico(IN user_check INT)
BEGIN
  SELECT 
    COUNT(his.usuario_id) AS quantidade_musicas_no_historico
  FROM SpotifyClone.historico_reproducoes AS his
  INNER JOIN SpotifyClone.usuario AS us
  ON his.usuario_id = us.usuario_id
  WHERE his.usuario_id = user_check
  ORDER BY quantidade_musicas_no_historico;
END $$

DELIMITER ;
