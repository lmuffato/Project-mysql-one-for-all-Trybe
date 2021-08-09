USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER to_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Usuario_Artista WHERE usuario_id = old.usuario_id;
DELETE FROM SpotifyClone.Usuario_Cancao WHERE usuario_id = old.usuario_id;
END $$
DELIMITER ;
