CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(planos.plano_valor), 2) AS 'faturamento_minimo',
        ROUND(MAX(planos.plano_valor), 2) AS 'faturamento_maximo',
        ROUND(AVG(planos.plano_valor), 2) AS 'faturamento_medio',
        ROUND(SUM(planos.plano_valor), 2) AS 'faturamento_total'
    FROM
        planos AS planos
            INNER JOIN
        usuarios AS usuarios ON usuarios.plano_id = planos.plano_id;
