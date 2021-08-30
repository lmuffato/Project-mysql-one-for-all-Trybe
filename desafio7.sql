DROP VIEW IF EXISTS perfil_artistas;
USE SpotifyClone;
CREATE VIEW perfil_artistas AS
SELECT
    art.artist_name AS `artista`,
    alb.album_name AS `album`,
    COUNT(fART.user_id) AS `seguidores`
FROM artists art
INNER JOIN albums alb
    ON art.artist_id = alb.artist_id
INNER JOIN followed_artists fART
    ON art.artist_id = fArt.artist_id
GROUP BY `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
