create table bloodrequest(name varchar(100),mobilenumber varchar(10) unique,email varchar(200) unique,bloodgroup varchar(10),status varchar(200));

create table donor(id number(10),name varchar(200),father varchar(200),mother varchar(200),mobilenumber varchar(10),gender varchar(10),mail varchar(100),bloodgroup varchar(10),address varchar(200));


drop table donor;
create table donor(id number(10),name varchar(200),father varchar(200),mother varchar(200),mobilenumber varchar(10) unique,gender varchar(10),mail varchar(100) unique,bloodgroup varchar(10),address varchar(200));
drop sequence donor_id;
create Sequence donor_id start with 101;


insert into stock values('A+','100');
insert into stock values('A-','50');
insert into stock values('B+','10');
insert into stock values('AB+','5');