CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT ROUND(MIN(p.planValue), 2) `faturamento_minimo`,
ROUND(MAX(p.planValue), 2) `faturamento_maximo`,
ROUND(AVG(p.planValue), 2) `faturamento_medio`,
ROUND(SUM(p.planValue), 2) `faturamento_total`
FROM SpotifyClone.plans p
INNER JOIN SpotifyClone.users u
ON u.planID = p.planID;
