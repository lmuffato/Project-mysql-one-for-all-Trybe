DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
  DELETE
    h, af 
  FROM 
    SpotifyClone.historico_de_reproducoes h
  JOIN
    SpotifyClone.artistas_favoritos af
  ON
    af.usuario_id = h.usuario_id
  WHERE
    h.usuario_id = OLD.usuario_id
  AND
    af.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
