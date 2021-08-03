CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS 'cancao', COUNT(*) AS 'reproducoes'
FROM cancoes AS c
INNER JOIN historico_de_reproducoes AS hdr
ON c.cancao_id = hdr.cancao_id
GROUP BY hdr.cancao_id
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
