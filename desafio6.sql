CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
      ROUND(MIN(plan.valor_plano), 2) AS `faturamento_minimo`,
      ROUND(MAX(plan.valor_plano), 2) AS `faturamento_maximo`,
      ROUND(AVG(plan.valor_plano), 2) AS `faturamento_medio`,
      ROUND(SUM(plan.valor_plano), 2) AS `faturamento_total`
FROM
SpotifyClone.usuarios AS users
INNER JOIN SpotifyClone.planos AS plan ON users.plano_id = plan.plano_id;
