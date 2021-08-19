CREATE VIEW perfil_artistas AS
SELECT ar.artist_name AS 'artista',
ab.album_name AS 'album',
count(fa.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albuns AS ab
INNER JOIN SpotifyClone.follow_artists AS fa
ON ar.artist_id = fa.artist_id and ar.artist_id = ab.artist_id
GROUP BY ab.album_name, ar.artist_name
ORDER BY `seguidores` DESC, `artista`, `album`;
