/* Desafio 6 - Tendo como base o valor dos planos e o plano que cada
pessoa usuária cadastrada possui no banco, queremos algumas informações
sobre o faturamento da empresa. Crie uma VIEW chamada faturamento_atual
que deve exibir quatro dados:
1. A primeira coluna deve ter o alias "faturamento_minimo" e exibir o
menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "faturamento_maximo" e exibir o
maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "faturamento_medio" e exibir o
valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir
o valor total obtido com os planos possuídos por pessuasusuárias. */
-- USE SpotifyClone;
SELECT
  ROUND(MIN(plan_price), 2) AS "faturamento_minimo",
  ROUND(MAX(plan_price), 2) AS "faturamento_maximo",
  ROUND(AVG(plan_price), 2) AS "faturamento_medio",
  ROUND(SUM(plan_price), 2) AS "faturamento_total"
FROM plans AS pl
INNER JOIN users AS us
  ON pl.plan_id = us.plan_id;
