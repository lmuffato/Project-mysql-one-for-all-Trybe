CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(DISTINCT C.cancao) cancoes, 
    COUNT(DISTINCT AR.artista) artistas,
    COUNT(DISTINCT AL.album) albuns
  FROM 
    SpotifyClone.ARTISTAS AR
      INNER JOIN
    SpotifyClone.ALBUMS AL ON AR.artista_id = AL.artista_id
      INNER JOIN
    SpotifyClone.CANCOES C ON C.album_id = AL.album_id;
    