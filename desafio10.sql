-- USE SpotifyClone;

-- DELIMITER $$
-- DROP FUNCTION IF EXISTS quantidade_musicas_no_historico;
-- CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(50))
-- RETURNS INT READS SQL DATA
-- BEGIN
--     DECLARE quantidade_reproducoes INT;

--     SELECT COUNT(h.user_id), u.user_name
--     FROM  SpotifyClone.history_user AS h
--     INNER JOIN SpotifyClone.user_info AS u 
--     ON h.user_id = u.user_id
--     GROUP BY h.user_id
--     HAVING u.user_name = usuario
    

--     INTO quantidade_reproducoes;

--     RETURN quantidade_reproducoes;
-- END $$
-- DELIMITER ;
