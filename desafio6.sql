CREATE VIEW faturamento_atual AS (
  SELECT
    ROUND(MIN(value),2) faturamento_minimo,
    ROUND(MAX(value),2) faturamento_maximo,
    ROUND(AVG(value),2) faturamento_medio,
    ROUND(SUM(value),2) faturamento_total
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.plans AS p
  ON p.plan_id = u.plan_id
);
