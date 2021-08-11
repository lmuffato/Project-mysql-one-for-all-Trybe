CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao AS `cancao`,
COUNT(h.usuario_ID) AS `reproducoes`
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancoes_ID = h.cancoes_ID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC
LIMIT 2;
