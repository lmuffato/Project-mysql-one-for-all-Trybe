CREATE VIEW top_2_hits_do_momento AS (
SELECT c.cancao AS cancao, COUNT(s.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS s
ON s.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
);
