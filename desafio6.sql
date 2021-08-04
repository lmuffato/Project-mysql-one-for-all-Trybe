CREATE VIEW faturamento_atual AS
SELECT MIN(plan.plano_valor) AS faturamento_minimo, 
MAX(plan.plano_valor) AS faturamento_maximo, 
ROUND(AVG(plan.plano_valor), 2) AS faturamento_medio,
SUM(plan.plano_valor) AS faturamento_total
FROM SpotifyClone.planos AS plan
INNER JOIN SpotifyClone.usuarios AS usrs
ON plan.plano_id = usrs.plano_id;
