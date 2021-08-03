CREATE VIEW top_2_hits_do_momento AS 
SELECT s.song AS cancao, (
  SELECT COUNT(*) FROM SpotifyClone.historic_musics AS h
  WHERE h.song_id = s.song_id
) AS reproducoes
FROM SpotifyClone.songs AS s
ORDER BY reproducoes DESC, cancao
LIMIT 2;
