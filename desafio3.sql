CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario.usuario_nome AS usuario, cancao.cancao_nome AS nome FROM usuario_cancao
INNER JOIN usuario
ON usuario.usuario_id = usuario_cancao.usuario_id
INNER JOIN cancao
ON usuario_cancao.cancao_id = cancao.cancao_id
ORDER BY usuario.usuario_nome, cancao.cancao_nome;
