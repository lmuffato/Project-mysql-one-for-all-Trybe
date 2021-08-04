CREATE VIEW top_3_artistas AS
SELECT
a.ArtistName AS 'artista',
COUNT(fa.UserID) AS 'seguidores'
FROM SpotifyClone.Artists a
INNER JOIN SpotifyClone.FollowingArtists fa
ON a.ArtistID = fa.ArtistID
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
