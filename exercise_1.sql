-- create database insurance;
use insurance;
-- create table person(
-- 	driver_id INT, 
--     name VARCHAR(50), 
--     address VARCHAR(50), 
--     PRIMARY KEY(driver_id)
--     );
--     
-- create table car(
-- 	license VARCHAR(20),
--     model VARCHAR(50),
--     year INT,
--     PRIMARY KEY(license)
--     );
--     
-- create table accident(
-- 	report_no int,
--     date date,
--     location varchar(50),
-- 	PRIMARY KEY(report_no)
--     );
--     
-- create table owns(
-- 	driver_id INT,
-- 	license VARCHAR(20));
--  
	-- alter table owns add constraint foreign key(driver_id) reference person(driver_id);
--     alter table owns add constraint foreign key(license) references car(license);
-- 
-- create table participated(
-- 	report_no int,
--     license varchar(20),
--     driver_id int,
--     damage_amount int
--     );
-- alter table participated add constraint foreign key(report_no) references accident(report_no);
-- alter table participated add constraint foreign key(license) references car(license);

rename table car to vehicle;
alter table accident change report_no report_number INT;
alter table person add column gender varchar(10);
alter table accident drop column location;
alter table participated change damage_amount damage_amount numeric(12,2);









