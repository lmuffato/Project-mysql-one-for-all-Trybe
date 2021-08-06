DROP VIEW IF EXISTS estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
SELECT
    COUNT(DISTINCT s.song_id) AS cancoes, 
    COUNT(DISTINCT ar.artist_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
  FROM 
    SpotifyClone.artist AS ar
  INNER JOIN
    SpotifyClone.album AS al
    ON ar.artist_id = al.artist_id
  INNER JOIN
    SpotifyClone.song AS s
    ON s.album_id = al.album_id;
