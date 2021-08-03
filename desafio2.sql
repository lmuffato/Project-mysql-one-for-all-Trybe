-- DESAFIO 2 Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

CREATE VIEW estatisticas_musicais AS

  SELECT COUNT(cancao_nome) AS `cancoes`,
    (SELECT
      COUNT(artista)
      FROM SpotifyClone.ARTISTA
    ) AS `artistas`,
    (SELECT
      COUNT(album_nome)
      FROM SpotifyClone.ALBUM) AS `albuns`
  FROM SpotifyClone.CANCAO;
