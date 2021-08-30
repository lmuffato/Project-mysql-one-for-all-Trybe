CREATE VIEW top_2_hits_do_momento AS
SELECT
    can.cancao as 'cancao',
    COUNT(his.cancao_id) AS 'reproducoes' 
FROM
    SpotifyClone.historico_reproducoes AS his 
INNER JOIN
    SpotifyClone.cancoes AS can 
        ON can.id = his.cancao_id 
GROUP BY
    his.cancao_id 
ORDER BY
    reproducoes DESC,
    cancao LIMIT 2;
