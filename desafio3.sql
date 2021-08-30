CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome 'usuario', c.cancao_nome 'nome'
FROM usuarios u 
INNER JOIN HistoricoReproducoes hr ON hr.usuario_id = u.usuario_id 
INNER JOIN cancoes c ON c.cancao_id = hr.cancao_id 
ORDER BY usuario_nome, c.cancao_nome;
