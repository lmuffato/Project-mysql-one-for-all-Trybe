CREATE VIEW top_2_hits_do_momento AS
SELECT cancao.cancao_nome AS cancao, COUNT(usuario.usuario_nome) AS reproducoes FROM usuario_cancao
INNER JOIN cancao
ON cancao.cancao_id = usuario_cancao.cancao_id
INNER JOIN usuario
ON usuario.usuario_id = usuario_cancao.usuario_id
GROUP BY cancao.cancao_nome
ORDER BY COUNT(usuario.usuario_nome) DESC, cancao.cancao_nome
LIMIT 2;
