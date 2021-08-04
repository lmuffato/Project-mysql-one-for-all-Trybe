CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT Cancao AS cancao, COUNT(1) AS reproducoes
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Cancao AS c ON h.Cancao_id = c.Cancao_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao LIMIT 2;
