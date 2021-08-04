CREATE VIEW cancoes_premium AS
SELECT c.cancao AS 'nome', COUNT(*) AS 'reproducoes'
FROM cancoes AS c
INNER JOIN historico_de_reproducoes AS hdr
ON c.cancao_id = hdr.cancao_id
INNER JOIN usuarios AS u
ON hdr.usuario_id = u.usuario_id
WHERE plano_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`;
