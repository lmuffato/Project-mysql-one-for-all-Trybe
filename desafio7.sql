CREATE VIEW perfil_artistas
AS
SELECT
  artists.artist AS artista,
  albums.album AS album,
  COUNT(*) AS seguidores
FROM artists AS artists
JOIN albums AS albums
  ON albums.artist_id = artists.artist_id;
JOIN followers AS followers
  ON followers.artist_id = artists.artist_id
GROUP BY artists, albums
ORDER BY seguidores DESC, artista, album;
