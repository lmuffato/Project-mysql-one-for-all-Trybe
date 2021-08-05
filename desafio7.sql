CREATE VIEW perfil_artistas AS (
SELECT ar.artista_nome AS 'artista',
al.album_nome AS 'album',
COUNT(fol.usuario_id) AS 'seguidores'
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
INNER JOIN SpotifyClone.seguindoArtistas as fol
ON (ar.artista_id = fol.artista_id) AND (al.artista_id = ar.artista_id)
GROUP BY al.album_nome, ar.artista_nome
ORDER BY COUNT(fol.usuario_id) DESC, ar.artista_nome ASC, al.album_nome ASC
);
