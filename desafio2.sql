CREATE VIEW estatisticas_musicais
AS
SELECT
  (SELECT COUNT(*) FROM songs AS cancoes),
  (SELECT COUNT(*) FROM artists AS artitas),
  (SELECT COUNT(*) FROM albums AS albuns);
