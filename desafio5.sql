create view top_2_hits_do_momento as
select s.song cancao, count(u.user_id) reproducoes from history h
join songs s on h.song_id = s.song_id
join users u on h.user_id = u.user_id
group by cancao order by reproducoes desc, cancao limit 2;
