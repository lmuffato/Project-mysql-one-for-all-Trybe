DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (userId INT)
    RETURNS INT READS SQL DATA
BEGIN
    DECLARE user_count INT;
SELECT 
    COUNT(*) 
FROM
  SpotifyClone.history_reproductions
WHERE 
    user_id = userId
GROUP BY 
    user_id 
INTO
    user_count;
RETURN 
    user_count;
END
$$ DELIMITER ;
