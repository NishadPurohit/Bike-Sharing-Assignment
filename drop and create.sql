select * from trip;

select count(*) from station;

create table station
	( `id` int not null,
    `name` varchar(30),
    `lat` float(30),
   `long` float(30),
    `dock_count` int,
    `city` varchar(30),
    `installation_date` varchar(30));

LOAD DATA LOCAL INFILE 'N:/Assigment2_Bike/station.csv'
INTO TABLE station
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`id`,`name`,`lat`,`long`,`dock_count`,`city`,`installation_date`);


select * from station;

drop table station;

ALTER TABLE station
modify COLUMN installation_date date as ('%d/%m/%y');

alter table station add i_date date; 

UPDATE station SET i_date = TO_DATE(installation_date,'MM/DD/YYYY');

ALTER TABLE `station` CHANGE `installation_date` `installation_date` DATE as ('%m/%d/%y');
select * from station;
se
