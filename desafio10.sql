DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userInput INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musics INT;
SELECT 
    COUNT(hi.song_id)
FROM
    SpotifyClone.historic AS hi
        INNER JOIN
    SpotifyClone.users AS us ON hi.user_id = us.user_id
WHERE
    us.user_id = userInput
GROUP BY hi.user_id INTO musics;
RETURN musics;
END $$
DELIMITER ;
