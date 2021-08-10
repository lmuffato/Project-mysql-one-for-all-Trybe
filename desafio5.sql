CREATE VIEW top_2_hits_do_momento AS

SELECT
  c.cancao AS `cancao`,
  COUNT(*) AS `reproducoes`
FROM SpotifyClone.cancao c
INNER JOIN SpotifyClone.historico_reproducao hr
  ON c.cancao_id = hr.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
