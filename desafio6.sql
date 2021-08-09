CREATE VIEW faturamento_atual AS
    SELECT 
        CONVERT( ROUND(MIN(pl.valores), 2) , CHAR) AS "faturamento_minimo",
        CONVERT( ROUND(MAX(pl.valores), 2) , CHAR) AS "faturamento_maximo",
        CONVERT( ROUND(AVG(pl.valores), 2) , CHAR) AS "faturamento_medio",
        CONVERT( ROUND(SUM(pl.valores), 2) , CHAR) AS "faturamento_total"
    FROM
        SpotifyClone.tipos_de_Planos AS pl
            INNER JOIN
        SpotifyClone.usuario AS us ON us.planos_id = pl.planos_id;
