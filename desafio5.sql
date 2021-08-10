CREATE View top_2_hits_do_momento as (
  select sog.songs_name as 'cancao',
  count(hist.user_id) as 'reproducoes'
  from SpotifyClone.history as hist
  inner join SpotifyClone.songs as sog
  inner join SpotifyClone.user as usr
  on hist.user_id = usr.user_id and sog.songs_id = hist.songs_id
  group by `cancao`
  having count(hist.user_id) > 1
  order by `cancao`, `reproducoes` desc
);
