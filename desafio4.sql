CREATE VIEW top_3_artistas
AS
SELECT
  artists.artist AS artista, COUNT(*) AS seguidores
FROM artists AS artists
INNER JOIN followers AS followers
  ON artists.artist_id = followers.artist_id
GROUP BY artists.artist
ORDER BY seguidores DESC, artista
LIMIT 3;
