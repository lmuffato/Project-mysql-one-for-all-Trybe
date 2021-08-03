CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao, COUNT(*) AS reproducoes FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.usuario_reproducao AS ur
ON ur.cancao_id = c.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, c.cancao LIMIT 2;
