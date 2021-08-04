CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao AS `cancao`,
COUNT(hr.cancao_id) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.cancoes AS c
ON hr.cancao_id = c.cancao_id
GROUP BY hr.cancao_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
