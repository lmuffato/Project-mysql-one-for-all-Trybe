USE SpotifyClone;

DROP VIEW IF EXISTS SpotifyClone.historico_reproducao_usuarios;

CREATE VIEW historico_reproducao_usuarios AS
SELECT su.usuario usuario, ss.cancoes nome  FROM SpotifyClone.Songs_Played sp
    INNER JOIN SpotifyClone.Users su
    ON su.usuario_id = sp.usuario_id
    INNER JOIN SpotifyClone.Songs ss
    ON ss.cancoes_id = sp.cancoes_id
    ORDER BY 1 ASC, 2 ASC;
