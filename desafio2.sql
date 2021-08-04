-- Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

-- A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

-- A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

-- A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".

-- Sua VIEW deve retornar a seguinte informação ao ser consultada:

-- Estatísticas musicais

-- O que será verificado:

-- Será validado se existe uma VIEW chamada estatisticas_musicais que exibe os dados corretos nas colunas cancoes, 
-- artistas e albuns".
CREATE VIEW estatisticas_musicais AS (
SELECT
(SELECT COUNT(song_id) FROM SpotifyClone.songs) AS cancoes,
(SELECT COUNT(singer_id) FROM SpotifyClone.performers) AS artistas,
(SELECT COUNT(album_id) FROM SpotifyClone.albums) AS albuns);
