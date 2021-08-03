CREATE VIEW faturamento_atual AS
SELECT MIN(plans.price) AS faturamento_minimo,
MAX(plans.price) AS faturamento_maximo,
ROUND(AVG(plans.price), 2) AS faturamento_medio,
ROUND(SUM(plans.price), 2) AS faturamento_total
FROM SpotifyClone.users AS users
JOIN SpotifyClone.plans as plans ON users.plan_id_fk = plans.plan_id;
