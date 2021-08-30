DROP VIEW IF EXISTS faturamento_atual;
USE SpotifyClone;
CREATE VIEW faturamento_atual AS
SELECT
    MIN(p.plan_price) AS `faturamento_minimo`,
    MAX(p.plan_price) AS `faturamento_maximo`,
    ROUND(AVG(p.plan_price), 2) AS `faturamento_medio`,
    SUM(p.plan_price) AS `faturamento_total`
FROM plans p
INNER JOIN users u
    ON p.plan_id = u.plan_id;
