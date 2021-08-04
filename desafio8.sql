-- DROP TRIGGER trigger_usuario_delete;

DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.following_artists  WHERE OLD.user_id = user_id;
DELETE FROM SpotifyClone.reproduction_history 
WHERE
    OLD.user_id = user_id;
END $$
DELIMITER ;

-- DELETE FROM SpotifyClone.users WHERE user_id = 1;
