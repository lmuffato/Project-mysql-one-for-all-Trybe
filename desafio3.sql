CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS 'usuario', c.cancao AS 'nome'
FROM usuarios AS u
INNER JOIN historico_de_reproducoes AS hdr
ON u.usuario_id = hdr.usuario_id
INNER JOIN cancoes AS c
ON hdr.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
