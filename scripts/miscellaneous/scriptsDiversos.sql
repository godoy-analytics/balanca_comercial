
drop table exportacao;

alter table municipio
drop foreign key municipio_ibfk_1;

alter table municipio
drop index sg_uf;

alter table porto
drop foreign key porto_ibfk_1;

alter table uf
drop primary key;

alter table uf
add constraint primary key
btree (co_uf);

