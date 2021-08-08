CREATE VIEW `estatisticas_musicais` AS
  SELECT
    COUNT(DISTINCT C.cancao_id) AS `cancoes`, 
    COUNT(DISTINCT AR.artista_nome) AS `artistas`,
    COUNT(DISTINCT AL.nome_album) AS `albuns`
  FROM 
    SpotifyClone.ARTISTA AS AR
      INNER JOIN
    SpotifyClone.ALBUM AS AL ON AR.artista_id = AL.artista_id
      INNER JOIN
    SpotifyClone.CANCAO AS C ON C.album_id = AL.album_id;
