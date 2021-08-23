/* 2. Crie uma VIEW chamada estatisticas_musicais que exiba três colunas: */
-- USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
  SELECT
    (SELECT COUNT(*) AS "cancoes" FROM songs),
    (SELECT COUNT(*) AS "artistas" FROM artists),
    (SELECT COUNT(*) AS "albuns" FROM albums);
