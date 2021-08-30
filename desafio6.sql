CREATE VIEW faturamento_atual
AS
SELECT
  CAST(MIN(plans.plan_value)) AS DOUBLE AS faturamento_minimo,
  CAST(MAX(plans.plan_value)) AS DOUBLE AS faturamento_maximo,
  CAST(AVG(plans.plan_value)) AS DOUBLE AS faturamento_medio,
  CAST(SUM(plans.plan_value)) AS DOUBLE AS faturamento_total
FROM plans AS plans
INNER JOIN users AS users
  ON plans.plan_id = users.plan_id;
