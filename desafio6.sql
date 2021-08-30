CREATE VIEW `faturamento_atual` AS
SELECT MIN(p.plan_price) AS `faturamento_minimo`, MAX(p.plan_price) AS `faturamento_maximo`, ROUND(AVG(p.plan_price), 2) AS `faturamento_medio`, SUM(p.plan_price) AS `faturamento_total`
FROM SpotifyClone.plan as p
INNER JOIN SpotifyClone.users as u
ON p.plan_id = u.plan_id; 
