DELIMITER $$
CREATE trigger trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.ReproductionHistory
WHERE UserID = OLD.UserID;
DELETE FROM SpotifyClone.FollowingArtists
WHERE UserID = OLD.UserID;
END $$
DELIMITER ;
