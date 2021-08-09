CREATE VIEW cancoes_premium AS (
SELECT t1.nome AS 'nome',
COUNT(t2.usuario_id) AS 'reproducoes'
FROM SpotifyClone.Cancao AS t1
INNER JOIN SpotifyClone.Usuario_Cancao as t2
ON t1.id_cancao = t2.id_cancao
INNER JOIN SpotifyClone.Usuario as t3
ON t3.usuario_id = t2.usuario_id
WHERE t3.id_plano IN(2, 3)
GROUP BY t1.nome
ORDER BY t1.nome
);
