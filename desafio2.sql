CREATE VIEW estatisticas_musicais AS (
  SELECT 
  (SELECT COUNT(cancao) FROM SpotifyClone.cancoes) AS `cancoes`,
  (SELECT COUNT(artista_nome) FROM SpotifyClone.artistas) AS `artistas`,
  (SELECT COUNT(album) FROM SpotifyClone.albuns) AS `albuns`
);
