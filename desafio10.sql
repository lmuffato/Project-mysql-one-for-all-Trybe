DELIMITER $$;

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE OUTPUT INT;
    SELECT COUNT(song_id) INTO OUTPUT
    FROM played_songs
    WHERE user_id = id
    GROUP BY user_id;
    RETURN OUTPUT;
END $$;

DELIMITER $$;
