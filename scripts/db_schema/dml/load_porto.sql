load data infile '/var/lib/mysql-files/porto.csv' 
into table porto
character set 'utf8'
fields terminated by ','
enclosed by '\"'
lines terminated by '\r\n'
ignore 1 lines;

