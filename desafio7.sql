CREATE View perfil_artistas as (
  select arts.artist_name as artista,
  alns.albuns_name as album,
  count(artf.user_id) as seguidores
  from SpotifyClone.artists_follows as artf
  inner join SpotifyClone.artists as arts
  inner join SpotifyClone.albuns as alns
  on (arts.artist_id = artf.artist_id) and (artf.artist_id = alns.artist_id)
  group by `artista`, `album`
  order by `seguidores` desc, `artista`, `album`
);
