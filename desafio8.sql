USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguidores
WHERE usuario_id = 1;

DELETE FROM SpotifyClone.historico_de_musicas
WHERE usuario_id = 1;
END $$
DELIMITER ;
