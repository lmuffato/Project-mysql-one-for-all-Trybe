CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
  MIN(valor_plano) faturamento_minimo,
  MAX(valor_plano) faturamento_maximo,
  ROUND(AVG(valor_plano), 2) faturamento_medio,
  SUM(valor_plano) faturamento_total
FROM
  SpotifyClone.PLANOS p
  INNER JOIN SpotifyClone.USUARIOS u ON u.plano_id = p.plano_id;
