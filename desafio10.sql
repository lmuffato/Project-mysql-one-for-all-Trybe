DROP FUNCTION IF EXISTS quantidade_musicas_no_historico;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
  RETURNS INT
  DETERMINISTIC
  
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
      u.id = id
  );
END$$

DELIMITER ;
