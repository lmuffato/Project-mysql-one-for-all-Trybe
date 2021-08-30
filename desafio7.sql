CREATE VIEW `perfil_artistas` AS
SELECT ar.artist_name AS `artista`, al.album_name AS `album`, COUNT(*) AS `seguidores`
FROM SpotifyClone.artist as ar
INNER JOIN SpotifyClone.album as al
ON ar.artist_id = al.artist_id 
INNER JOIN SpotifyClone.following as f
ON ar.artist_id = f.artist_id 
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
