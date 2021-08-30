CREATE VIEW top_2_hits_do_momento
AS
SELECT
  songs.song AS cancao, count(*) AS reproducoes
FROM songs AS songs
INNER JOIN history AS history
  ON history.song_id = songs.song_id
GROUP BY songs.song
ORDER BY reproducoes DESC, cancao
LIMIT 2;
