create View faturamento_atual as (
  select 
  (select round(min(pls.plan_price), 2)) as faturamento_minimo,
  (select round(max(pls.plan_price), 2)) as faturamento_maximo,
  (select round(avg(pls.plan_price), 2)) as faturamento_medio,
  (select round(sum(pls.plan_price), 2)) as faturamento_total
  from SpotifyClone.plans as pls
  inner join SpotifyClone.user as usr
  on pls.plan_id = usr.plan_id
);
