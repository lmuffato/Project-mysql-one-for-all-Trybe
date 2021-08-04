CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(Preço) AS faturamento_minimo,
        MAX(Preço) AS faturamento_maximo,
        ROUND(AVG(Preço), 2) AS faturamento_medio,
        ROUND(SUM(Preço), 2) AS faturamento_total
    FROM
        SpotifyClone.Planos AS p
            INNER JOIN
        SpotifyClone.Usuarios AS u ON p.Plano_ID = u.Plano_ID;
