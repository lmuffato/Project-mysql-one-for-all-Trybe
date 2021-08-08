CREATE VIEW faturamento_atual AS
  SELECT
    MIN(valor) AS `faturamento_minimo`,
    MAX(valor) AS `faturamento_maximo`,
    ROUND(AVG(valor), 2) AS `faturamento_medio`,
    SUM(valor) AS `faturamento_total`
  FROM
    SpotifyClone.PLANO AS P
      INNER JOIN
    SpotifyClone.USUARIO AS U ON U.plano_id = P.plano_id;
