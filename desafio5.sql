CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao_nome `cancao`, COUNT(hr.cancao_id) `reproducoes`
FROM cancoes c 
INNER JOIN HistoricoReproducoes hr ON c.cancao_id = hr.cancao_id 
GROUP BY cancao_nome HAVING reproducoes > 1
ORDER BY reproducoes DESC;
