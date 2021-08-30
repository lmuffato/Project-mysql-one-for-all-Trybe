-- Consultada solução encontrada por Edmilson Neto - Turma 10-A
-- DELIMITER $$
-- CREATE FUNCTION quantidade_musicas_no_historico(user INT)
--   RETURNS INT READS SQL DATA
--   BEGIN
--     DECLARE musics INT
--     SELECT COUNT(h.music_ID)
--     FROM SpotifyClone.history_musics AS h
--     WHERE h.user_ID = user INTO musics;
--     RETURN musics;
--   END $$
-- DELIMITER ;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musics_on_history INT;
SELECT COUNT(p.music_ID)
FROM SpotifyClone.history_musics AS p
WHERE p.user_ID = id_usuario
INTO musics_on_history;
RETURN musics_on_history;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
