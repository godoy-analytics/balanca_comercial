load data infile '/var/lib/mysql-files/uf.csv' 
into table uf
character set 'utf8'
fields terminated by ','
enclosed by '\"'
lines terminated by '\r\n'
ignore 1 lines;

