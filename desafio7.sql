CREATE VIEW perfil_artistas AS (
SELECT ar.artist_name AS 'artista',
al.album_name AS 'album',
COUNT(fol.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artist_followers as fol
ON (ar.artist_id = fol.artist_id) AND (al.artist_id = ar.artist_id)
GROUP BY al.album_name, ar.artist_name
ORDER BY COUNT(fol.user_id) DESC, ar.artist_name ASC, al.album_name ASC
);
