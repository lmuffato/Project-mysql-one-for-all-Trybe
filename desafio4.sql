CREATE VIEW top_3_artistas AS
SELECT
  a.artist AS 'artista',
  COUNT(s.user_id) AS 'seguidores'
FROM
  SpotifyClone.social AS s
INNER JOIN
  SpotifyClone.artists AS a ON s.artist_id = a.artist_id
GROUP BY a.artist
ORDER BY 'seguidores' DESC, 'artista'
LIMIT 3;
