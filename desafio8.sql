DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
  DELETE FROM
  SpotifyClone.historico_de_reproducoes h
  WHERE
    h.usuario_id = OLD.usuario_id;
  DELETE FROM
    SpotifyClone.artistas_favorito af
  WHERE
    af.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
