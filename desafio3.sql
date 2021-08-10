CREATE VIEW historico_reproducao_usuarios AS
SELECT t1.usuario AS usuario, t2.musica AS nome
FROM usuarios AS t1, musicas AS t2, historico AS t3
WHERE t1.usuario_id = t3.usuario_id AND t2.musica_id = t3.musica_id
ORDER BY usuario, nome;
