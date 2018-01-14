load data infile '/var/lib/mysql-files/ncm_sh4' 
into table ncm_sh4
character set 'utf8'
fields terminated by '\#'
enclosed by '\"'
lines terminated by '\n'
ignore 1 lines;

