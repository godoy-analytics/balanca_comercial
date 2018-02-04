use balanca_comercial;
set session lc_time_names = 'pt_BR';

-- necessari fazer if
create temporary table tmp_exportacao (ano int, mes int, valor bigint);
create temporary table tmp_importacao (ano int, mes int, valor bigint);

insert into tmp_exportacao
select	exp.co_ano ano,
		exp.co_mes mes,
        sum(exp.vl_fob) exportacao
from exportacao exp
where exp.co_ano in (year(now()) - 1, year(now()))
group by exp.co_ano, exp.co_mes;

insert into tmp_importacao
select	imp.co_ano ano,
		imp.co_mes mes,
        sum(imp.vl_fob) importacao
from importacao imp
where imp.co_ano in (year(now()) - 1, year(now()))
group by imp.co_ano, imp.co_mes;

select 	exp.ano,
		exp.mes,
        monthname(adddate('2001-01-01',  interval exp.mes - 1 month)) mes_2,
        exp.valor exportacao,
        imp.valor importacao
from tmp_exportacao exp
inner join tmp_importacao imp on imp.ano = exp.ano and imp.mes = exp.mes
order by exp.ano, exp.mes;

