DELIMITER $$

CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.History WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.Following WHERE user_id = OLD.user_id;
END $$

DELIMITER ;

-- DELETE FROM SpotifyClone.Users WHERE username = 'Thati';