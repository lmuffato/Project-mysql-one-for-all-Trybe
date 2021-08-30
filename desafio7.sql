CREATE VIEW perfil_artistas AS
SELECT
  ar.artist AS 'artista',
  a.album,
  COUNT(s.artist_id) AS 'seguidores'
FROM
  SpotifyClone.artists AS ar
INNER JOIN
  SpotifyClone.albums AS a ON ar.artist_id = a.artist_id
INNER JOIN
  SpotifyClone.social AS s ON ar.artist_id = s.artist_id
GROUP BY a.album, ar.artist
ORDER BY COUNT(s.artist_id) DESC, ar.artist ASC, a.album ASC;
