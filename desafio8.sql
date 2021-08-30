DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.user
  FOR EACH ROW
  BEGIN
    DELETE FROM SpotifyClone.history_musics WHERE user_ID = OLD.user_ID;
    DELETE FROM SpotifyClone.follower_artists WHERE user_ID = OLD.user_ID;
  END $$
DELIMITER ;
