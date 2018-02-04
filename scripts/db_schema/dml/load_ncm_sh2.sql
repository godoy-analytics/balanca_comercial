load data infile '/var/lib/mysql-files/ncm_sh2' 
into table ncm_sh2
character set 'utf8'
fields terminated by '\#'
enclosed by '\"'
lines terminated by '\n'
ignore 1 lines;

