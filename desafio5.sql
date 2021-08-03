CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao_nome AS cancao, COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.historico_reproducao AS hr
INNER JOIN 
SpotifyClone.cancao AS c  
ON hr.cancao_id = c.cancao_id
GROUP BY hr.cancao_id
ORDER BY `reproducoes` DESC, `cancao` ASC LIMIT 2;

-- DROP VIEW top_2_hits_do_momento;