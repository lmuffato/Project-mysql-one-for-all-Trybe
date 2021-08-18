CREATE VIEW estatisticas_musicais AS
SELECT
  COUNT(DISTINCT S.song_id) AS cancoes,
  COUNT(DISTINCT A.artista_id) AS artistas,
  COUNT(DISTINCT AL.album_id) AS albuns
FROM
  SpotifyClone.ARTISTAS AS A
  INNER JOIN SpotifyClone.ALBUMS AS AL ON A.artista_id = AL.artista_id
  INNER JOIN SpotifyClone.SONGS AS S ON S.album_id = AL.album_id;
