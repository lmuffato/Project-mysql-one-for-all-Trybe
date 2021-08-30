DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DELETE FROM history
  WHERE history.user_id = old.user_id;
    DELETE FROM followers
    WHERE followers.user_id = old.user_id;
END $$

DELIMITER ;
