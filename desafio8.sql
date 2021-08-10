DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Songs_Played
    WHERE OLD.usuario_id = usuario_id;

    DELETE FROM SpotifyClone.Followers
    WHERE OLD.usuario_id = usuario_id;
END $$

DELIMITER $$ ;
