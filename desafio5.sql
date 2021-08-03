CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT
      music.musica AS `cancao`, COUNT(reproduce.musica_id) AS `reproducoes`
FROM
SpotifyClone.reproducoes AS reproduce
INNER JOIN SpotifyClone.musicas AS music ON reproduce.musica_id = music.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
