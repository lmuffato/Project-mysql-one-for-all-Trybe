CREATE VIEW top_2_hits_do_momento AS
SELECT ss.cancoes cancao, Count(sp.cancoes_id) reproducoes FROM SpotifyClone.Songs_Played sp
INNER JOIN SpotifyClone.Songs ss
ON ss.cancoes_id = sp.cancoes_id
GROUP BY 1
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
