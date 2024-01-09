# 날짜 : 2024/01/09
#이름 : 이예나
#내용 : 교재Ch03_3 데이터 변경을 위한 SQL문

#손코딩 P.141
USE market_db;
create table hongong1 (
		toy_id		int,
        toy_name	char(4),
        age			int
        );

insert into hongong1 values (1, '우디', 25);
insert into hongong1 (toy_id, toy_name) values (2, '버즈');
insert into hongong1 (toy_name, age, toy_id) values ('제시', 20, 3);

#손코딩 P.142
create table hongong2 (
	toy_id		int auto_increment primary key,
    toy_name	char(4),
    age			int

);

insert into hongong2 values (null, '보핍', 25);
insert into hongong2 values (null, '슬링키', 22);
insert into hongong2 values (null, '렉스', 21);
select * from hongong2;

select last_insert_id();

#손코딩 P.143
alter table hongong2 auto_increment=100;
insert into hongong2 values (null, '재남', 35);
select * from hongong2;


create table hongong3 (
	toy_id		int auto_increment primary key,
    toy_name	char(4),
    age			int
);

#번호 시작값 1000으로 변경
alter table hongong3 auto_increment=1000;

#3씩 증가하도록 변경
set @@auto_increment_increment=3;

#손코딩 P.144
insert into hongong3 values (null, '토마스', 20);
insert into hongong3 values (null, '제임스', 23);
insert into hongong3 values (null, '고든', 25);
select * from hongong3;

#손코딩 P.145
select count(*) from world.city;

DESC world.city;

select * from world.city limit 5;

#손코딩 P.146
create table city_popul (
	city_name		char(35),
    population		int
);

insert into city_popul
	select Name, Population from world.city;

#손코딩 P.147
use market_db;
update city_popul
	set city_name = '서울'
    where city_name = 'Seoul';
select * from city_popul where city_name = '서울';

#손코딩 P.148
update city_popul
	set city_name = '뉴욕', population = 0
    where city_name = 'New York';
select * from city_popul where city_name = '뉴욕';

#손코딩 P.149
update city_popul
	set population = population / 10000;
select * from city_popul limit 5;

delete from city_popul
	where city_name like 'New%';

#손코딩 P.150
delete from city_popul
	where city_name like 'New%'
    limit 5;

#손코딩 P.151
create table big_table1 (select * from world.city, sakila.country);
create table big_table2 (select * from world.city, sakila.country);
create table big_table3 (select * from world.city, sakila.country);
select count(*) from big_table1;

delete from big_table1;
drop table big_table2;
truncate table big_table3;










