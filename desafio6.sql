CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(p.plano_valor), 2) `faturamento_minimo`,
ROUND(MAX(p.plano_valor), 2) `faturamento_maximo`,
ROUND(SUM(p.plano_valor) / COUNT(p.plano_valor), 2) `faturamento_medio`,
ROUND(SUM(p.plano_valor), 2) `faturamento_total`
FROM planos p
INNER JOIN usuarios u
ON p.plano_id = u.plano_id;
