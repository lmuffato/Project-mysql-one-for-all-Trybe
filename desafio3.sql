create view estatisticas_musicais as
select u.name usuario, s.song nome from history h
	join users u on h.user_id = u.user_id
  join songs s on h.song_id = s.song_id
order by usuario, song;
