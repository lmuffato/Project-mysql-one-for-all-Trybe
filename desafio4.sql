CREATE VIEW top_3_artistas AS
SELECT A.name AS `artista`,
COUNT(*) As `seguidores`
FROM SpotifyClone.artists_following AS AF
INNER JOIN SpotifyClone.artists AS A
ON AF.artist_id=A.artist_id
GROUP BY AF.artist_id
ORDER BY seguidores DESC, artista LIMIT 3;
