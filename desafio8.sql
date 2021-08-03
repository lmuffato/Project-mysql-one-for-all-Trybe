USE SpotifyClone;
DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON SpotifyClone.user FOR EACH ROW BEGIN
DELETE FROM
  SpotifyClone.history
WHERE
  OLD.user_id = user_id;
DELETE FROM
  SpotifyClone.followed_artists
WHERE
  OLD.user_id = user_id;
END $$
