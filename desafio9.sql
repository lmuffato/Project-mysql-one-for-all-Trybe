DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
    SELECT art.`name` AS `artista`, alb.`name` AS `album`
    FROM SpotifyClone.artists AS art
    INNER JOIN  SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
    WHERE art.`name` = artist_name;
END $$

DELIMITER ;
