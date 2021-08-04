DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuario
  FOR EACH ROW
BEGIN 
  DELETE FROM SpotifyClone.seguindo_artista
  WHERE OLD.usuario_id = usuario_id;
  DELETE FROM SpotifyClone.historico_reproducao
  WHERE OLD.usuario_id = usuario_id;
END $$
