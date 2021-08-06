CREATE VIEW faturamento_atual AS
SELECT 
MIN(P.VALOR_DO_PLANO) AS `faturamento_minimo`,
MAX(P.VALOR_DO_PLANO) AS `faturamento_maximo`,
ROUND(AVG(P.VALOR_DO_PLANO),2) AS `faturamento_medio`,
SUM(P.VALOR_DO_PLANO) AS `faturamento_total`
FROM SpotifyClone.PLANO AS P
INNER JOIN SpotifyClone.USUARIOS AS U
ON P.PLANO_ID = U.PLANO_ID;
