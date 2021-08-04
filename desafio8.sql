DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.Users
    FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.Followed_artists AS F
  WHERE F.user_id = OLD.user_id;
  DELETE FROM SpotifyClone.User_history AS UH
  WHERE UH.user_id = OLD.user_id;
END $$
DELIMITER ;
