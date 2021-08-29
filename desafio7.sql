CREATE VIEW perfil_artistas AS
SELECT seguidores.artista, album.album_nome AS album, seguidores.seguidores FROM album
INNER JOIN (
SELECT artista.artista_id AS id, artista.artista_nome AS artista, COUNT(usuario.usuario_nome) AS seguidores FROM usuario_artista
INNER JOIN artista
ON artista.artista_id = usuario_artista.artista_id
INNER JOIN usuario
ON usuario.usuario_id = usuario_artista.usuario_id
GROUP BY artista.artista_id, artista.artista_nome) AS seguidores
ON seguidores.id = album.artista_id
ORDER BY seguidores.seguidores DESC, seguidores.artista, album.album_nome;
