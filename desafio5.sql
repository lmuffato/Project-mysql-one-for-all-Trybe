CREATE VIEW top_2_hits_do_momento AS
SELECT songs.song AS cancao, COUNT(tablehistory.song_id) AS reproducoes
FROM SpotifyClone.songs AS songs
JOIN SpotifyClone.rep_history AS tablehistory ON tablesongs.song_id = tablehistory.song_id_fk
GROUP BY cancao ORDER BY reproducoes DESC , cancao ASC LIMIT 2;
