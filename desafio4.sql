DROP VIEW IF EXISTS top_3_artistas;
USE SpotifyClone;

CREATE VIEW top_3_artistas AS
SELECT 
    art.artist_name AS `artista`,
    COUNT(fArt.user_id) AS `seguidores`
FROM followed_artists fArt
INNER JOIN artists art
    ON fArt.artist_id = art.artist_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
