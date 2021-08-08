-- SELECT * FROM SpotifyClone.Cançoes;
-- SELECT * FROM SpotifyClone.Artista;
-- SELECT * FROM SpotifyClone.Album;

-- SELECT COUNT(CAN.canção_ID) AS `cancoes`,
--     (SELECT COUNT(ART.artista_id) FROM SpotifyClone.Artista AS ART) AS `artistas`,
--     (SELECT COUNT(ALB.album_ID) FROM SpotifyClone.Album AS ALB) AS `albuns`
--     FROM SpotifyClone.Cançoes AS CAN;

-- USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
    SELECT COUNT(CAN.canção_ID) AS `cancoes`,
    (SELECT COUNT(ART.artista_id) FROM SpotifyClone.Artista AS ART) AS `artistas`,
    (SELECT COUNT(ALB.album_ID) FROM SpotifyClone.Album AS ALB) AS `albuns`
    FROM SpotifyClone.Cançoes AS CAN;

-- SELECT * FROM estatisticas_musicais;
