CREATE VIEW perfil_artistas AS
SELECT
    art.artist_name AS `artista`,
    alb.album_name AS `album`,
    COUNT(fART.user_id) AS `seguidores`
FROM SpotifyClone.artists art
INNER JOIN SpotifyClone.albums alb
    ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.followed_artists fART
    ON art.artist_id = fArt.artist_id
GROUP BY `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
