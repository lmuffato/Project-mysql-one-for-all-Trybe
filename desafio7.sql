CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT ar.artist_name AS `artista`,
al.album_name AS `album`,
COUNT(f.artist_id) AS `seguidores`
FROM SpotifyClone.artists As ar
INNER JOIN SpotifyClone.albums AS al ON al.artist_id = ar.artist_id
INNER JOIN SpotifyClone.followed_artists AS f ON f.artist_id = ar.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
