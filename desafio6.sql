CREATE VIEW faturamento_atual AS
  SELECT
    (
      SELECT FORMAT(MIN(p.value), 2)
      FROM SpotifyClone.plans AS p
    ) AS faturamento_minimo,
    (
      SELECT FORMAT(MAX(p.value), 2)
      FROM SpotifyClone.plans AS p
    ) AS faturamento_maximo,
    FORMAT(AVG(p.value), 2) AS faturamento_medio,
    FORMAT(SUM(p.value), 2) AS faturamento_total
  FROM SpotifyClone.users AS u
  LEFT JOIN SpotifyClone.plans AS p
  ON u.plan_id = p.plan_id;
