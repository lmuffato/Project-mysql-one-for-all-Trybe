CREATE VIEW perfil_artistas AS
SELECT
	ar.artista_nome `artista`,
	ab.album_nome `album`,
	COUNT(FA.usuario_id) `seguidores`
FROM artistas ar
INNER JOIN albuns ab ON ar.artista_id = ab.artista_id 
INNER JOIN FaArtistas FA ON ar.artista_id = FA.artista_id
GROUP BY `album`, artista
ORDER BY seguidores DESC, artista, album;
