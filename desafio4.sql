CREATE VIEW top_3_artistas AS
SELECT 
    art.artist_name AS `artista`,
    COUNT(fArt.user_id) AS `seguidores`
FROM SpotifyClone.followed_artists fArt
INNER JOIN SpotifyClone.artists art
    ON fArt.artist_id = art.artist_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
