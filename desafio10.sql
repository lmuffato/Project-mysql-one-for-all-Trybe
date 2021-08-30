DELIMITER $$
    CREATE FUNCTION quantidade_musicas_no_historico(id INT)
    RETURNS INT READS SQL DATA
    BEGIN
        DECLARE user_songs_hist INT;
        SELECT
            COUNT(song_id)
        FROM SpotifyClone.songs_history
        WHERE user_id = id
        INTO user_songs_hist;
        RETURN user_songs_hist;
    END $$
DELIMITER;
