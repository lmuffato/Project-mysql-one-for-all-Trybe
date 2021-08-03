CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS 'cancao',
count(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY c.cancao ASC
ORDER BY count(h.usuario_id) DESC
LIMIT 2;
