USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
    SELECT (SELECT Count(ss.cancoes) AS cancoes  FROM SpotifyClone.Songs ss) AS cancoes,
    (SELECT Count(sa.artista) FROM SpotifyClone.Artist sa ) AS artistas,
    (SELECT Count(sal.album) FROM SpotifyClone.Album sal ) AS albuns;
