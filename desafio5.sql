CREATE VIEW top_2_hits_do_momento AS (
SELECT cancoes.cancao_nome AS cancao,
COUNT(historico.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON cancoes.cancao_id = historico.cancao_id
GROUP BY historico.cancao_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2
);
