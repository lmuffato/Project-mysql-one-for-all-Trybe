CREATE VIEW faturamento_atual AS
  SELECT
    MIN(plans.value) AS faturamento_minimo,
    MAX(plans.value) AS faturamento_maximo,
    ROUND(AVG(plans.value),2) AS faturamento_medio,
    sum(plans.value) AS faturamento_total
  FROM 
    SpotifyClone.plans AS plans
      INNER JOIN
    SpotifyClone.users AS users ON users.plan_id = plans.plan_id;
