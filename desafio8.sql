DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users FOR EACH ROW
BEGIN
  DELETE FROM followers
  WHERE user_id = OLD.id;
  DELETE FROM playback_history
  WHERE user_id = OLD.id;
END $$

DELIMITER ;
