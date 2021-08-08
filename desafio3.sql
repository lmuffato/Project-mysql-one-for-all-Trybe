CREATE VIEW historico_reproducao_usuarios AS
SELECT t1.usuario AS 'usuario',
t3.nome AS 'nome'
FROM SpotifyClone.Usuario AS t1
INNER JOIN SpotifyClone.Usuario_Cancao AS t2
ON t2.usuario_id = t1.usuario_id
INNER JOIN SpotifyClone.Cancao AS t3
ON t2.id_cancao = t3.id_cancao
ORDER BY t1.usuario,t3.nome;
