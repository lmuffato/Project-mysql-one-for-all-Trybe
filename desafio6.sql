CREATE VIEW faturamento_atual AS
  SELECT
    ROUND(MIN(p.price), 2) AS 'faturamento_minimo',
    ROUND(MAX(p.price), 2) AS 'faturamento_maximo',
    ROUND(AVG(p.price), 2) AS 'faturamento_medio',
    ROUND(SUM(p.price), 2) AS 'faturamento_total'
  FROM plan AS p
  INNER JOIN user AS u
  ON u.id_plan = p.id_plan;
