CREATE VIEW faturamento_atual AS
SELECT
  (
    SELECT
      MIN(subscription_value)
    FROM
      SpotifyClone.planos
  ) AS faturamento_minimo,
  (
    SELECT
      MAX(subscription_value)
    FROM
      SpotifyClone.planos
  ) AS faturamento_maximo,
  ROUND(AVG(p.subscription_value), 2) AS faturamento_medio,
  SUM(p.subscription_value) AS faturamento_total
FROM
  SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.planos AS p ON u.subscription_id = p.subscription_id;
