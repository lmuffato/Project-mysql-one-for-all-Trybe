CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT a.artistName `artista`,
COUNT(f.artistID) `seguidores`
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.followingArtist f
ON f.artistID = a.artistID
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
