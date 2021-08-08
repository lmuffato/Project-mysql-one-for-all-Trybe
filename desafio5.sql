CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao_nome AS 'cancao', COUNT(HR.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancao C
INNER JOIN SpotifyClone.historico_reproducoes HR
ON C.cancao_id = HR.cancao_id
GROUP BY C.cancao_nome
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
