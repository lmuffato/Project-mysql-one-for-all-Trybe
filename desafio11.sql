CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT
      music.musica AS `nome`, COUNT(reproduce.musica_id) AS `reproducoes`
FROM 
      (SELECT
            usuario_id
      FROM
            SpotifyClone.usuarios
      WHERE
            plano_id IN (2, 3)) AS users
INNER JOIN SpotifyClone.reproducoes AS reproduce ON users.usuario_id = reproduce.usuario_id
INNER JOIN SpotifyClone.musicas AS music ON reproduce.musica_id = music.musica_id
GROUP BY `nome`
ORDER BY `nome`;
