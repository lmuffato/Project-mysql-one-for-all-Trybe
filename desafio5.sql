CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        cc.nome_das_cancoes AS "cancao", COUNT(*) AS "reproducoes"
    FROM
        SpotifyClone.cancoes AS cc
            INNER JOIN
        SpotifyClone.historico_reproducoes AS his ON his.cancoes_id = cc.cancoes_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
