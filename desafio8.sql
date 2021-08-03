DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM historic WHERE user_id = OLD.user_id;
DELETE FROM followers WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
