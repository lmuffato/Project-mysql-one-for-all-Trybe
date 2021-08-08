CREATE PROCEDURE albuns_do_artista(IN nome_do_artista VARCHAR(30))
BEGIN
SELECT
albuns.nome_album AS `album`,
artistas.nome_artista AS `artista`
FROM SpotifyClone.Albuns AS albuns
INNER JOIN SpotifyClone.Artistas AS artistas
ON albuns.artista_id = artistas.artista_id
WHERE artistas.nome_artista = nome_do_artista;
END
