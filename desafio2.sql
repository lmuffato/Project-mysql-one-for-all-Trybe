CREATE VIEW estatisticas_musicais AS
  SELECT count(m.music_ID) AS `cancoes`,
    (SELECT count(a.artists_ID) FROM SpotifyClone.artists AS a) AS `artistas`,
    (SELECT count(ab.album_ID) FROM SpotifyClone.album AS ab) AS `albuns`
  FROM SpotifyClone.musics AS m;
