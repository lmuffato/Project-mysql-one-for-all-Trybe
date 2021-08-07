CREATE VIEW top_2_hits_do_momento AS
  SELECT
    c.cancao AS `cancao`,
    COUNT(h.cancao_id) AS `reproducoes`
  FROM SpotifyClone.cancoes AS c
  INNER JOIN SpotifyClone.historico_reproducoes AS h
  ON h.cancao_id = c.cancao_id
  GROUP BY c.cancao
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
