CREATE VIEW top_2_hits_do_momento AS
SELECT tablesongs.song AS cancao, COUNT(tablehistory.song_id) AS reproducoes
FROM SpotifyClone.history AS tablehistory
INNER JOIN SpotifyClone.songs AS tablesongs ON tablehistory.song_id_fk = tablesongs.song_id
GROUP BY tablesongs.song ORDER BY 2 DESC , 1 ASC LIMIT 2;
