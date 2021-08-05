CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao,
COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS hr
ON c.cancao_id = hr.cancao_id
GROUP BY hr.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
