CREATE
  VIEW estatisticas_musicais AS
SELECT
  (SELECT COUNT(*)
FROM SpotifyClone.cancoes) `cancoes`,
  (SELECT COUNT(*)
FROM SpotifyClone.artistas) `artistas`,
  (SELECT COUNT(*)
FROM SpotifyClone.albuns) `albuns`;
