CREATE VIEW historico_reproducao_usuarios AS
SELECT t1.usuario AS usuario,
t3.cancao AS nome FROM SpotifyClone.usuarios AS t1
INNER JOIN SpotifyClone.historicoDeReproducoes AS t2
INNER JOIN SpotifyClone.cancoes AS t3
ON t1.usuario_id = t2.usuario_id AND t2.cancao_id = t3.cancao_id
GROUP BY usuario, nome
ORDER BY usuario, nome;
