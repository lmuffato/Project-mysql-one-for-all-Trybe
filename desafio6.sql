CREATE VIEW faturamento_atual AS
SELECT MIN(planos.plano_valor) AS faturamento_minimo, MAX(planos.plano_valor) AS faturamento_maximo, CONVERT(AVG(planos.plano_valor), DECIMAL(4,2)) AS faturamento_medio, SUM(planos.plano_valor) AS faturamento_total FROM usuario
INNER JOIN planos
ON planos.plano_id = usuario.plano_id;
