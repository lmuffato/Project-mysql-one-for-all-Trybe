CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS `artista`,
al.album_name AS `album`,
COUNT(f.artist_id) AS `seguidores`
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.following_artists AS f
ON al.artist_id = f.artist_id
GROUP BY f.artist_id, al.album_name
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
