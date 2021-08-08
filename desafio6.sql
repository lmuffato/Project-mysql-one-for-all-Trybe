CREATE VIEW faturamento_atual AS
SELECT
MIN(valor_plano) AS `faturamento minimo`,
MAX(valor_plano) AS `faturamento_maximo`,
ROUND(SUM(valor_plano)/4,2) AS `faturamento_medio`,
SUM(valor_plano) AS `faturamento_total`
FROM SpotifyClone.Planos;
