DELIMITER $$  CREATE TRIGGER trigger_usuario_delete BEFORE DELETE 
        ON SpotifyClone.users FOR EACH ROW BEGIN   DELETE 
    FROM
        SpotifyClone.follow_artists 
    WHERE
        UserId = OLD.UserId;
DELETE 
FROM
    SpotifyClone.user_history 
WHERE
    UserId = OLD.UserId;
END $$  DELIMITER ;
