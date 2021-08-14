CREATE VIEW cancoes_premium AS
SELECT s.songName `nome`,
COUNT(l.songID) `reproducoes`
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.listeningHistory l
ON l.songID = s.songID
INNER JOIN SpotifyClone.users u
ON u.userID = l.userID
INNER JOIN SpotifyClone.plans p
ON p.planID = u.planID
WHERE p.planID <> 1
GROUP BY `nome`
ORDER BY `nome`;
