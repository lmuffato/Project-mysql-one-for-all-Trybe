CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.UserName AS 'usuario',
m.MusicName AS 'nome'
FROM SpotifyClone.Users u
INNER JOIN SpotifyClone.ReproductionHistory rh
ON u.UserID = rh.UserID
INNER JOIN SpotifyClone.Musics m
ON m.MusicID = rh.MusicID
ORDER BY `usuario`, `nome`;
