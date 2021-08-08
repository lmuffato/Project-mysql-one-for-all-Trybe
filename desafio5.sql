-- SELECT * FROM SpotifyClone.Historico_reproduçoes;
-- SELECT * FROM SpotifyClone.Cançoes;
-- SELECT * FROM SpotifyClone.Usuario;

-- SELECT CAN.nome_cançao AS `cancao`,
-- COUNT(CAN.nome_cançao) AS `reproducoes`
-- FROM SpotifyClone.Historico_reproduçoes AS HIS
-- INNER JOIN SpotifyClone.Cançoes AS CAN ON CAN.canção_ID = HIS.canção_ID
-- GROUP BY `cancao`
-- ORDER BY `reproducoes` DESC, `cancao`
-- LIMIT 2;

-- USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
SELECT CAN.nome_cançao AS `cancao`,
COUNT(CAN.nome_cançao) AS `reproducoes`
FROM SpotifyClone.Historico_reproduçoes AS HIS
INNER JOIN SpotifyClone.Cançoes AS CAN ON CAN.canção_ID = HIS.canção_ID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

-- SELECT * FROM op_2_hits_do_momento;
