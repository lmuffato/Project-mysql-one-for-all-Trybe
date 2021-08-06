CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT cancoes.cancao_id) AS cancoes,
COUNT(DISTINCT artistas.artista_id) AS artistas,
COUNT(DISTINCT albuns.album_id) AS albuns
FROM 
  SpotifyClone.cancoes AS cancoes
INNER JOIN
  SpotifyClone.albuns AS albuns
ON cancoes.album_id = albuns.album_id
INNER JOIN 
  SpotifyClone.artistas AS artistas
ON artistas.artista_id = albuns.artista_id
