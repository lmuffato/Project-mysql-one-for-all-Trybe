CREATE VIEW cancoes_premium AS
SELECT 
m.MusicName AS 'nome',
COUNT(rh.MusicID) AS 'reproducoes'
FROM SpotifyClone.Musics m
INNER JOIN SpotifyClone.ReproductionHistory rh
ON m.MusicID = rh.MusicID
INNER JOIN SpotifyClone.Users u
ON u.UserID = rh.UserID
INNER JOIN SpotifyClone.Plans p
ON p.PlanID = u.PlanID
WHERE p.PlanType IN('Familiar', 'Universitário')
GROUP BY `nome`
ORDER BY `nome`;
