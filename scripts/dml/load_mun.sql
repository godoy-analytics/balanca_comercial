load data infile '/var/lib/mysql-files/municipio.csv' 
into table municipio
character set 'utf8'
fields terminated by ','
enclosed by '\"'
lines terminated by '\r\n'
ignore 1 lines;

