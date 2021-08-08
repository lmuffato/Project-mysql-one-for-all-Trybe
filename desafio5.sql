CREATE VIEW top_2_hits_do_momento AS (
SELECT t1.nome AS 'cancao',
COUNT(t2.usuario_id) AS 'reproducoes'
FROM SpotifyClone.Cancao AS t1
INNER JOIN SpotifyClone.Usuario_Cancao AS t2
ON t2.id_cancao = t1.id_cancao
GROUP BY t1.nome
ORDER BY COUNT(t2.usuario_id) DESC, t1.nome
LIMIT 2
);
