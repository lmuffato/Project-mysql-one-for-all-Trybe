/* 2. Crie uma VIEW chamada estatisticas_musicais que exiba três colunas: */
USE SpotifyClone;
CREATE VIEW top_10_customers AS
  SELECT
    (SELECT COUNT(*) AS "cancoes" FROM songs),
    (SELECT COUNT(*) AS "artistas" FROM artists),
    (SELECT COUNT(*) AS "albuns" FROM albums);
