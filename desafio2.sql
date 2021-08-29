CREATE VIEW estatisticas_musicais AS
SELECT 
  (
    SELECT COUNT(song) FROM SpotifyClone.songs
  ) AS cancoes,
  (
  SELECT COUNT(artist) FROM SpotifyClone.artists
  ) AS artistas,
COUNT(album) AS albuns FROM SpotifyClone.albums;
