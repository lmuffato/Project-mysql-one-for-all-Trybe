CREATE VIEW top_2_hits_do_momento AS
SELECT
C.NOME_DA_CANCAO AS `cancao`,
COUNT(H.CANCAO_ID) AS `reproducoes`
FROM SpotifyClone.CANCOES AS C
INNER JOIN SpotifyClone.HIST_REPRODUCOES AS H
ON C.CANCAO_ID = H.CANCAO_ID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
