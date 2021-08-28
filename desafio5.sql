CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        cancoes.cancao AS cancao,
        COUNT(historico_de_reproducoes.usuario_id) AS reproducoes
    FROM
        historico_de_reproducoes AS historico_de_reproducoes
            INNER JOIN
        cancoes AS cancoes ON historico_de_reproducoes.cancao_id = cancoes.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao ASC
    LIMIT 2;
