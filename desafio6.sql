CREATE VIEW faturamento_atual AS (
  SELECT
    ROUND(MIN(price),2) AS faturamento_minimo,
    ROUND(MAX(price),2) AS faturamento_maximo,
    ROUND(AVG(price),2) AS faturamento_medio,
    ROUND(SUM(price),2) AS faturamento_total
  FROM SpotifyClone.users u
  INNER JOIN SpotifyClone.plans p ON p.plan_id = u.plan_id
);
