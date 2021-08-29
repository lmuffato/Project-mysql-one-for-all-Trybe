CREATE VIEW estatisticas_musicais AS
  SELECT * FROM (
    (SELECT COUNT(*) AS `cancoes` FROM SpotifyClone.songs) as `cancaocount`,
    (SELECT COUNT(*) AS `artistas` FROM SpotifyClone.artists ) as `artistacount`,
    (SELECT COUNT(*) AS `albuns` FROM SpotifyClone.albums) as `albumcount`
  );
