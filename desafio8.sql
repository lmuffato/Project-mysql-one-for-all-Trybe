DELIMITER $ $ CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.USUARIOS FOR EACH ROW BEGIN
DELETE FROM
  SpotifyClone.HISTORICOS
WHERE
  usuario_id = OLD.usuario_id;
DELETE FROM
  SpotifyClone.ARTISTAS_FOLLOW
WHERE
  usuario_id = OLD.usuario_id;
END $ $ DELIMITER;
