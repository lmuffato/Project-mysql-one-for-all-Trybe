DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.customer
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.customer_artist WHERE customer_id = OLD.customer_id;
DELETE FROM SpotifyClone.customer_song WHERE customer_id = OLD.customer_id;
END $$
DELIMITER ;
