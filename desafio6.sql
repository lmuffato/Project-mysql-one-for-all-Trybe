create View faturamento_atual as (
  select 
  (select round(min(plan_price), 2)) as faturamento_minimo,
  (select round(max(plan_price), 2)) as faturamento_maximo,
  (select round(avg(plan_price), 2)) as faturamento_medio,
  (select round(sum(plan_price), 2)) as faturamento_total
  from plans
);
