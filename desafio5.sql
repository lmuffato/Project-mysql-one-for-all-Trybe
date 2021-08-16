CREATE VIEW top_2_hits_do_momento AS
SELECT mus.nome AS 'cancao', COUNT(mus.musica_id) AS 'reproducoes' FROM SpotifyClone.historico AS his
JOIN SpotifyClone.musicas AS mus ON his.musica_id = mus.musica_id
GROUP BY 1
ORDER BY 2 DESC, 1
LIMIT 2;

