CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT u.userName `usuario`,
s.songName `nome`
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.listeningHistory l
ON l.userID = u.userID
INNER JOIN SpotifyClone.songs s
ON s.songID = l.songID
ORDER BY `usuario`, `nome`;
