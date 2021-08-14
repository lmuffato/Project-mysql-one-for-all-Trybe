DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.listeningHistory
WHERE userID = OLD.userID;
DELETE FROM SpotifyClone.followingArtist
WHERE userID = OLD.userID;
END $$

DELIMITER ;
