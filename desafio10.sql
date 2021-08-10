DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_check INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE musicas_tocadas INT;
  SELECT COUNT(his.usuario_id)
  FROM SpotifyClone.historico_reproducoes AS his
  INNER JOIN SpotifyClone.usuario AS us
  ON his.usuario_id = us.usuario_id
  WHERE his.usuario_id = user_check INTO musicas_tocadas;
  RETURN musicas_tocadas;
END $$

DELIMITER ;
