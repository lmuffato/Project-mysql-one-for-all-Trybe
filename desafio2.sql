USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS  SELECT
    (SELECT
        COUNT(id) 
    FROM
        songs) AS cancoes,
    (SELECT
        COUNT(id) 
    FROM
        artists) AS artistas,
    (SELECT
        COUNT(id) 
    FROM
        albuns) AS albuns;
