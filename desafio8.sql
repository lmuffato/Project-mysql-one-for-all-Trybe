DROP TRIGGER IF EXISTS trigger_usuario_delete;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Followers WHERE SpotifyClone.Users.usuario_id = SpotifyClone.Followers.usuario_id;
    DELETE FROM SpotifyClone.Songs_Played WHERE SpotifyClone.Songs_Played.usuario_id = SpotifyClone.Users = usuario_id;
END $$

DELIMITER $$ ;
