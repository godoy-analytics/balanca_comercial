create view vw_importacao as (
select 	co_ano ano,
		co_mes mes,
		sh2.no_sh2_por categoria,
        sh4.no_sh4_por produto,
        pais.no_pais pais,
        porto.no_porto porto,
        mun.no_mun municipio,
        mun.sg_uf uf,
        imp.kg_liquido,
        imp.vl_fob
from importacao imp
inner join ncm_sh4 sh4 on sh4.co_sh4 = imp.co_sh4
inner join ncm_sh2 sh2 on sh2.co_sh2 = sh4.co_sh2
inner join pais on pais.co_pais = imp.co_pais
inner join porto on porto.co_porto = imp.co_porto
inner join municipio mun on mun.co_mun_geo = imp.co_mun_geo
)