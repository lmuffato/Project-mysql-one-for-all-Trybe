CREATE VIEW cancoes_premium AS
SELECT t1.musica AS nome,
COUNT(t2.musica_id) AS reproducoes
FROM musicas AS t1, historico AS t2
WHERE t2.usuario_id IN (
  SELECT usuario_id
  FROM usuarios
  WHERE plano_id IN (2, 3)
) AND t2.musica_id = t1.musica_id
GROUP BY nome
ORDER BY nome;
