USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios -- BEFORE usado baseado no PR do Adelino Junior. Eu estava usando o AFTER
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.seguindo_artistas WHERE usuario_id = OLD.usuario_id;
  DELETE FROM SpotifyClone.historico_de_reproducoes WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
