CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT ROUND(MIN(p.Valor),2) AS 'faturamento_minimo',
ROUND(MAX(p.Valor),2) AS 'faturamento_maximo',
ROUND(AVG(Valor),2) AS 'faturamento_medio',
ROUND(SUM(Valor),2) AS 'faturamento_total'
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.Plano AS p ON u.Plano_id = p.Plano_id;
