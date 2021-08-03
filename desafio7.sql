CREATE VIEW perfil_artistas AS
SELECT ar.nome_artista AS 'artista',
al.album,
count(s.artista_id) AS 'seguidores'
FROM SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.Seguindo AS s
ON ar.artista_id = s.artista_id
GROUP BY al.album, ar.nome_artista
ORDER BY count(s.artista_id) DESC, ar.nome_artista ASC, al.album ASC;
