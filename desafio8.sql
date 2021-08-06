DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuarios
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.seguindo WHERE OLD.usuario_id = usuario_id;

  DELETE FROM SpotifyClone.historico_reproducoes WHERE OLD.usuario_id = usuario_id;
END $$

-- ajuda e explicação de OLD por Rafael Medeiros. 
