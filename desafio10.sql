CREATE FUNCTION quantidade_musicas_no_historico(searched_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT COUNT(usuario_id)
FROM SpotifyClone.Historico_de_reproducoes
WHERE usuario_id = searched_id INTO quantidade_musicas;
RETURN quantidade_musicas;
END
