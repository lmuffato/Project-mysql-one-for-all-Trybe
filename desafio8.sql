USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
  FOR EACH ROW
BEGIN
  DELETE
  FROM follows
  WHERE user_id = OLD.user_id;
  DELETE
  FROM reproductions
  WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
