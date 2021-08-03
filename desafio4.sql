CREATE VIEW top_3_artistas AS 
SELECT a.artist AS artista, (
  SELECT COUNT(*) FROM SpotifyClone.followed_artists AS f
  WHERE a.artist_id = f.artist_id
) AS seguidores
FROM SpotifyClone.artists a
ORDER BY seguidores DESC, artista
LIMIT 3;
