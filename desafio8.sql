DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.User
FOR EACH ROW
BEGIN 
  DELETE FROM SpotifyClone.History WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.Artist_followers WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.User_plan WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
