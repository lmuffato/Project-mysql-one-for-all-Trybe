DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON user
FOR EACH ROW
BEGIN
DELETE FROM following 
WHERE user_id = OLD.user_id;
DELETE FROM track_record WHERE user_id = OLD.user_id;
END $$
