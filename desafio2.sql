CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(musicas.musica_id) AS 'cancoes',
(SELECT COUNT(artista_id) FROM SpotifyClone.artistas) AS 'artistas',
(SELECT COUNT(album_id) FROM SpotifyClone.albuns) AS 'albuns'
FROM SpotifyClone.musicas AS musicas;
