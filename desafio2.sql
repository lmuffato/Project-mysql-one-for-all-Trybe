CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(*) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.artista) AS artistas, 
(SELECT COUNT(*) FROM SpotifyClone.album) AS albuns
FROM SpotifyClone.cancao;

-- View criada com base no material do course e https://pt.stackoverflow.com/questions/234105/count-em-v%C3%A1rias-tabelas;
