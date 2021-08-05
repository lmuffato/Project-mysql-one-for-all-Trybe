CREATE VIEW cancoes_premium AS
SELECT
    SUB.CA AS nome,
    COUNT(SUB.US) AS reproducoes
FROM(
    SELECT C.cancao AS CA, U.usuario AS US, P.plano AS plano FROM SpotifyClone.planos AS P
    INNER JOIN SpotifyClone.usuarios AS U
    ON P.plano_id = U.plano_id
    INNER JOIN SpotifyClone.historico_reproducao as HR
    ON  U.usuario_id = HR.usuario_id
    INNER JOIN SpotifyClone.cancoes AS C
    ON HR.cancao_id = C.cancao_id
    WHERE P.plano <> 'gratuito') AS SUB
    GROUP BY SUB.CA
    ORDER BY 1;
    