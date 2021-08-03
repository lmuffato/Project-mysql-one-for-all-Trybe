CREATE VIEW faturamento_atual AS
  SELECT 
    MIN(P.plan_value) AS `faturamento_minimo`,
    MAX(P.plan_value) AS `faturamento_maximo`,
    ROUND(AVG(P.plan_value), 2) AS `faturamento_medio`,
    ROUND(SUM(P.plan_value), 2) AS `faturamento_total`
  FROM SpotifyClone.Users AS U  
  INNER JOIN SpotifyClone.Plans AS P
  ON U.plan_id = P.plan_id;
-- Error Code: 1146. Table 'SpotifyClone.User' doesn't exist
