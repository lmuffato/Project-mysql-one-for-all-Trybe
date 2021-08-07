CREATE VIEW perfil_artistas AS (
SELECT 
ar.artist AS 'artista',
al.album AS 'album',
COUNT(af.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS ar
JOIN SpotifyClone.albums AS al
ON al.artist_id = ar.artist_id
JOIN SpotifyClone.artist_followers AS af
ON af.artist_id = ar.artist_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`
);
