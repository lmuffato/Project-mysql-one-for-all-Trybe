CREATE OR REPLACE VIEW faturamento_atual AS
  SELECT 
    ROUND(MIN(p.price), 2) AS faturamento_minimo,
    ROUND(MAX(p.price), 2) AS faturamento_maximo,
    ROUND(AVG(p.price), 2) AS faturamento_medio,
    ROUND(SUM(p.price), 2) AS faturamento_total
  FROM 
    plan AS p, user AS u
  WHERE
    p.id = u.plan_id; 
