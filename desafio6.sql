-- SELECT * FROM SpotifyClone.Plano;
-- SELECT * FROM SpotifyClone.Usuario;

-- SELECT
-- ROUND(MIN(PLA.valor),2) AS `faturamento_minimo`,
-- ROUND(MAX(PLA.valor),2) AS `faturamento_maximo`,
-- ROUND(AVG(PLA.valor),2) AS `faturamento_medio`,
-- ROUND(SUM(PLA.valor),2) AS `faturamento_total`
-- FROM SpotifyClone.Plano AS PLA
-- INNER JOIN SpotifyClone.Usuario AS USU ON USU.plano_ID = PLA.plano_ID;

-- USE SpotifyClone;

CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(PLA.valor),2) AS `faturamento_minimo`,
ROUND(MAX(PLA.valor),2) AS `faturamento_maximo`,
ROUND(AVG(PLA.valor),2) AS `faturamento_medio`,
ROUND(SUM(PLA.valor),2) AS `faturamento_total`
FROM SpotifyClone.Plano AS PLA
INNER JOIN SpotifyClone.Usuario AS USU ON USU.plano_ID = PLA.plano_ID;

-- SELECT * FROM faturamento_atual;
