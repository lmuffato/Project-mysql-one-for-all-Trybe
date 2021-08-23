/* Desafio 2 - Crie uma VIEW chamada estatisticas_musicais que exiba três colunas: */
-- USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
  SELECT
    (SELECT COUNT(*) FROM songs) AS "cancoes",
    (SELECT COUNT(*) FROM artists) AS "artistas" ,
    (SELECT COUNT(*) FROM albums) AS "albuns";
