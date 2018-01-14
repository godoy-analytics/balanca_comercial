/*
SET @@global.sql_mode= 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';


 create table if not exists uf (co_uf int,
		sg_uf char(2) not null,
		no_uf varchar(200) not null,
		no_regiao varchar(200) not null,
              primary key (sg_uf)
		);


create table if not exists municipio (
			co_mun_geo int,
			no_mun varchar(1000) not null,
		--	no_mun_min text not null,
			sg_uf char(2) not null,
			primary key (co_mun_geo),
			foreign key (sg_uf) references uf (sg_uf)
			);
*/

/*
	
create table if not exists porto (
				co_porto int,
				no_porto varchar(1000),
				sg_uf char(2),
				primary key (co_porto),
				foreign key (sg_uf) references uf (sg_uf)
				);	
			


create table if not exists pais (
				co_pais int,
				co_pais_ison3 int,
				co_pais_isoa3 char(3),
				no_pais varchar(300),
				no_pais_ing varchar(300),
				no_pais_esp varchar(300),
				primary key (co_pais)
			) CHARACTER SET=utf8mb4;



create table if not exists ncm_sec (
			            co_ncm_secrom varchar(10) primary key,
				    no_sec_por varchar(255),
				    no_sec_esp varchar(255),
	       			    no_sec_ing varchar(255)
				   ) CHARACTER SET=utf8;



create table if not exists ncm_sh2 (
				    co_sh2 int primary key,
				    no_sh2_por varchar(255),
				    no_sh2_esp varchar(255),
				    no_sh2_ing varchar(255),
				    co_ncm_secrom varchar(10) not null,
				    foreign key (co_ncm_secrom) references ncm_sec (co_ncm_secrom)
				   ) CHARACTER SET=utf8;




create table if not exists ncm_sh4 (
				    co_sh4 int primary key,
				    no_sh4_por varchar(255),
				    no_sh4_esp varchar(255),
	                            no_sh4_ing varchar(255),
                                    co_sh2 int not null,
			            foreign key (co_sh2) references ncm_sh2 (co_sh2)
				   ) CHARACTER SET=utf8;



create table if not exists exportacao (
				      co_ano int,
				      co_mes int,
                                      co_sh4 int,
                                      co_pais int,
                                      co_uf int,
                                      co_porto int,					
				      co_mun_geo int,
				      kg_liquido int,
                                      vl_fob int,
				      foreign key (co_sh4) references ncm_sh4 (co_sh4),
				      foreign key (co_pais) references pais (co_pais),
				      foreign key (co_uf) references uf (co_uf),
                                      foreign key (co_porto) references porto (co_porto),
                                      foreign key (co_mun_geo) references municipio (co_mun_geo),
				      primary key (co_ano, co_mes, co_sh4, co_pais, co_uf, co_porto, co_mun_geo)
				      ) CHARACTER SET=utf8;

*/

create table if not exists importacao (
				      co_ano int,
				      co_mes int,
                                      co_sh4 int,
                                      co_pais int,
                                      co_uf int,
                                      co_porto int,					
				      co_mun_geo int,
				      kg_liquido int,
                                      vl_fob int,
				      foreign key (co_sh4) references ncm_sh4 (co_sh4),
				      foreign key (co_pais) references pais (co_pais),
				      foreign key (co_uf) references uf (co_uf),
                                      foreign key (co_porto) references porto (co_porto),
                                      foreign key (co_mun_geo) references municipio (co_mun_geo),
				      primary key (co_ano, co_mes, co_sh4, co_pais, co_uf, co_porto, co_mun_geo)
				      ) CHARACTER SET=utf8;





