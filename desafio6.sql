CREATE VIEW faturamento_atual AS
SELECT
  (
    SELECT
      MIN(valor)
    FROM
      SpotifyClone.planos
  ) AS faturamento_minimo,
  (
    SELECT
      MAX(valor)
    FROM
      SpotifyClone.planos
  ) AS faturamento_maximo,
  ROUND(AVG(p.valor), 2) AS faturamento_medio,
  SUM(p.valor) AS faturamento_total
FROM
  SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.planos AS p ON u.plano_id = p.plano_id;
