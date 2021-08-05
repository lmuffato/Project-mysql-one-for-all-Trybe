DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_name VARCHAR(255))
  RETURNS INT
  
BEGIN
  RETURN (
    SELECT 
      COUNT(rh.song_id) AS quantidade_musicas_no_historico
    FROM 
      reproduction_history AS rh
    INNER JOIN
      user u 
    ON 
      rh.user_id = u.id
    AND
      u.name = user_name
  );
END$$

DELIMITER ;
