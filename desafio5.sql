CREATE VIEW top_2_hits_do_momento AS
SELECT
nome_cancao AS `cancao`,
COUNT(historico.cancao_id) AS `reproducoes`
FROM SpotifyClone.Cancoes AS cancoes
INNER JOIN SpotifyClone.Historico_de_reproducoes AS historico
ON cancoes.cancao_id = historico.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
