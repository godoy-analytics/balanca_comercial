SET NAMES 'utf8mb4';


load data infile '/var/lib/mysql-files/pais2.csv' 
into table pais
-- character set utf8mb4
fields terminated by ','
enclosed by '\"'
lines terminated by '\r\n'
ignore 1 lines;

