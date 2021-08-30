CREATE VIEW estatisticas_musicais AS
SELECT 
  COUNT(m.music_id) AS 'cancoes',
  COUNT(DISTINCT a.artist_id) AS 'artistas',
  COUNT(DISTINCT a.album_id) AS 'albuns'
FROM SpotifyClone.albums AS a
INNER JOIN SpotifyClone.musics AS m
ON a.album_id = m.album_id;
