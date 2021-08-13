-- challenge 8;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  AFTER DELETE ON usuarios
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.historico_reproducoes WHERE usuario_id=OLD.usuario_id;
  DELETE FROM SpotifyClone.artistas_seguidos WHERE usuario_id=OLD.usuario_id;
END $$

DELIMITER ;
