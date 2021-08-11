CREATE VIEW faturamento_atual AS
SELECT
MAX(valor_plano) AS `faturamento_maximo`,
FORMAT(ROUND(AVG(valor_plano), 2), 2),
MIN(valor_plano) AS `faturamento_minimo`,
SUM(valor_plano) AS `faturamento_total`
FROM SpotifyClone.planos;
-- drop view faturamento_atual;
-- SELECT*FROM faturamento_atual;
-- SELECT AVG(valor_plano) FROM SpotifyClone.planos;
