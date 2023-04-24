create database mydb;

use mydb;

create table mytable 
(
id int unsigned NOT NULL auto_increment ,
username varchar(100) NOT NULL,
email varchar(100) NOT NULL,
primary key  (id)
);

insert into mytable (username, email) values("rakshith","rakshithrai@gmail.com");

select * from mytable;

show databases;

show tables;

describe mytable;

delete from mytable where id=1;


create user 'rakshith'@'localhost' identified by 'Rakshi9*';

update mytable set username="rakshithr" where id=1;

GRANT SELECT, INSERT, UPDATE ON mydb.mytable TO 'rakshith'@'localhost';


SELECT * FROM information_schema.PROCESSLIST ORDER BY INFO DESC, TIME DESC;

select '123'*2;

create table mycar 
(
name varchar(100),
price decimal(8,2),
car_id int unsigned NOT NULL auto_increment PRIMARY KEY
);

INSERT INTO mycar ( `name`, `price`) VALUES ('Audi A1', '20000');
INSERT INTO mycar ( `name`, `price`) VALUES ('Audi A1', '15000');
INSERT INTO mycar ( `name`, `price`) VALUES ( 'Audi A2', '40000');
INSERT INTO mycar ( `name`, `price`) VALUES ('Audi A2', '40000');
delete from mycar where car_id=1;
select * from mycar;

select distinct name,price from mycar;

select st.name,st.price, case when st.price>20000 then "HIGH" else "LOW" END as 'remark' from mycar as st;

select st.name,st.price,IF (st.price>=20000,"pass","fail") AS 'remark' from  mycar as st;

select * from mycar order by car_id limit 2,4;

select * from mycar where car_id not between 2 and 3;

select * from mycar order by car_id limit 1 offset 2;

select * from mysql.user;

set @name="rakshith";
show grants for 'rakshith'@'localhost';

set @date='25/10/2998';

select @birthdate:=EXTRACT(YEAR from @date);

CREATE TABLE bird (
 bird_id INT NOT NULL AUTO_INCREMENT,
 species VARCHAR(300) DEFAULT NULL COMMENT 'You can include genus, but never subspecies.',
 INDEX idx_species (species) COMMENT 'We must search on species often.',
 PRIMARY KEY (bird_id));
 
insert into mycar (price,name) values 
(30000,'AUDI5'),
(50000,'AUDI8'),
(70000,'AUDI0');

select * from mycar;
select last_insert_id();
 
 insert into mycar (`name`,price) values('AUDI5',30000) on duplicate key update 
 `name`=VALUES('AUDI89');
 
 describe bird;
 
 select * from mytable;
 
insert into mytable (username,email) values('pavan','pavan@gmail.com');

select * from mytable;

insert into mytable (id,username,email) values (7,'pavan','pavan@gmail.com') on duplicate key update
username=values(username),
email=values(email);

 
delete from mytable where username='pavan';

create table burn (
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rate varchar(100),
    price varchar(100)
) ENGINE=INNODB;

insert into burn (rate,price) values(10.3,400);


select * from mycar order by car_id desc;
select * from burn;




