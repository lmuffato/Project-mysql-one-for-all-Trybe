CREATE VIEW faturamento_atual AS (
SELECT
MIN(p.plan_value) AS 'faturamento_minimo',
MAX(p.plan_value) AS 'faturamento_maximo',
ROUND(AVG(p.plan_value), 2)  AS 'faturamento_medio',
SUM(p.plan_value) AS 'faturamento_total'
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user_info AS i
ON p.plan_id = i.plan_id
);

-- uso o inner join para juntar com a quantidade de planos que tenho na tabela user_info, assim quando faço o avg, 
-- pego a media de quantas pessoas estao usandos os planos
