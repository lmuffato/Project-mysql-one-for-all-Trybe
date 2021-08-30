CREATE VIEW cancoes_premium AS
SELECT
    c.cancao_nome `nome`,
    COUNT(hr.usuario_id) `reproducoes`
FROM HistoricoReproducoes hr
INNER JOIN cancoes c ON hr.cancao_id = c.cancao_id
INNER JOIN usuarios u ON hr.usuario_id = u.usuario_id
WHERE u.plano_id IN (2,3)
GROUP BY `nome`
ORDER BY `reproducoes` DESC, `nome`;