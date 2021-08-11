CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MAX(valor_plano), 2) AS `faturamento_maximo`,
FORMAT(ROUND(AVG(valor_plano), 2), 2) AS `faturamento_medio`,
FORMAT(MIN(valor_plano), 2) AS `faturamento_minimo`,
FORMAT(SUM(valor_plano), 2) AS `faturamento_total`
FROM SpotifyClone.planos;
-- drop view faturamento_atual;
-- SELECT*FROM faturamento_atual;
-- SELECT AVG(valor_plano) FROM SpotifyClone.planos;
