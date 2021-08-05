SELECT COUNT(cancao) AS cancoes,
(SELECT COUNT(nome) FROM SpotifyClone.artistas) AS artistas,
(SELECT COUNT(album) FROM SpotifyClone.albuns) AS albuns FROM SpotifyClone.cancoes;
