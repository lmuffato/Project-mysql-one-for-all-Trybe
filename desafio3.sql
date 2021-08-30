CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome AS `usuario`, c.cancao_nome AS `nome`
FROM usuarios u, cancoes c 
INNER JOIN HistoricoReproducoes hr ON hr.cancao_id = c.cancao_id
ORDER BY usuario_nome, cancao_nome;
