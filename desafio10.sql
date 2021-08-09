DELIMITER $
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qnt_songs INT;
SELECT 
    COUNT(h.cancoes_id)
FROM
    SpotifyClone.historico_reproducoes h
WHERE
    h.usuario_id = usuario_id INTO qnt_songs;
    RETURN qnt_songs;
END $
DELIMITER ;
