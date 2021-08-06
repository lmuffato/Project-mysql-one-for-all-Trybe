-- Para esse desafio consultei o PR #63 do Murilo Gonçalves e Também o PR #74 da Ana Ventura.
CREATE VIEW perfil_artistas AS (
SELECT per.singer_name AS 'artista',
al.title AS 'album',
COUNT(fol.user_id) AS 'seguidores'
FROM SpotifyClone.performers AS per
INNER JOIN SpotifyClone.albums AS al
INNER JOIN SpotifyClone.following_artists as fol
ON (per.singer_id = fol.singer_id) AND (per.singer_id = al.singer_id)
GROUP BY al.title, per.singer_id
ORDER BY seguidores DESC, artista, album);
