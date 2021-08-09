CREATE View top_3_artistas as (
  select art.artist_name as 'artista',
  count(artf.user_id) as 'seguidores'
  from SpotifyClone.artists_follows as artf
  inner join SpotifyClone.artists as art
  inner join SpotifyClone.user as usr
  on artf.user_id = usr.user_id and art.artist_id = artf.artist_id
  group by `artista`
  having count(artf.user_id) > 1
  order by `seguidores` desc, `artista`
);
