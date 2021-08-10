CREATE VIEW faturamento_atual AS
  SELECT
    MIN(pla.valor_plano) AS faturamento_minimo,
    MAX(pla.valor_plano) AS faturamento_maximo,
    ROUND(AVG(pla.valor_plano), 2) AS faturamento_medio,
    SUM(pla.valor_plano) AS faturamento_total
FROM SpotifyClone.planos AS pla
INNER JOIN SpotifyClone.usuario AS us
ON pla.plano_id = us.plano_id
;
