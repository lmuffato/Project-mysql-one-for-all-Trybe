-- DESAFIO 6: Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma VIEW chamada faturamento_atual que deve exibir quatro dados:

CREATE VIEW faturamento_atual (`faturamento_minimo`, `faturamento_maximo`, `faturamento_medio`, `faturamento_total`) AS

  SELECT
    MIN(P.valor_plano),
    MAX(P.valor_plano),
    ROUND(AVG(P.valor_plano), 2),
    ROUND(SUM(P.valor_plano), 2)
  FROM SpotifyClone.PLANO P
  INNER JOIN SpotifyClone.USUARIO U
  ON U.plano_id = P.plano_id;
