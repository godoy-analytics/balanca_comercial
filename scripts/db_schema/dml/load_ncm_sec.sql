load data infile '/var/lib/mysql-files/ncm_secrom' 
into table ncm_sec
character set 'utf8'
fields terminated by '\#'
enclosed by '\"'
lines terminated by '\r\n'
ignore 1 lines;

