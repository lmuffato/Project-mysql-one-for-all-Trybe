DROP VIEW IF EXISTS estatisticas_musicais;
USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT
    COUNT(DISTINCT s.song_id) cancoes, 
    COUNT(DISTINCT ar.artist_id) artistas,
    COUNT(DISTINCT al.album_id) albuns
  FROM 
    SpotifyClone.artist AS ar
  INNER JOIN
    SpotifyClone.album AS al
    ON ar.artist_id = al.artist_id
  INNER JOIN
    SpotifyClone.song AS s
    ON s.album_id = al.album_id;
