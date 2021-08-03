-- DESAFIO 2 Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

CREATE VIEW estatisticas_musicais (`cancoes`, `artistas`, `albuns`) AS

  SELECT COUNT(cancao_nome),
    (SELECT
      COUNT(artista)
      FROM SpotifyClone.ARTISTA
    ),
    (SELECT
      COUNT(album_nome)
      FROM SpotifyClone.ALBUM)
  FROM SpotifyClone.CANCAO;
