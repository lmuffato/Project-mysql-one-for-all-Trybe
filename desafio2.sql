CREATE VIEW `estatisticas_musicais` AS
SELECT COUNT(M.MUSIC_ID) AS cancoes,
( SELECT 
COUNT(A.ARTIST_ID) 
FROM SpotifyClone.ARTIST AS A
) AS artistas,
(
SELECT
COUNT(AL.ALBUM_ID)
FROM SpotifyClone.ALBUM AS AL
) AS albuns
FROM SpotifyClone.MUSIC AS M;
