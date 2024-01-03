#날짜 : 2024/01/03
#이름 : 이예나
#내용 : 4장 SQL 고급

#실습 4-1
#실습 4-2

Create table `Member` (
	`uid`		varchar(10) primary key,
    `name`		varchar(10) not null,
    `hp`		char(13) 	unique not null,
    `pos`		char(2)		default '사원',
    `dep`		int			,
    `rdate`		datetime	not null
);

delete from `Member` where `uid`='a103';


insert into `Member` values ('a101','박혁거세','010-1234-1001','부장',101,'2020-11-19 11:39:48');
insert into `Member` values ('a102','김유신','010-1234-1002','차장',101,'2020-11-19 11:39:48');
insert into `Member` (`uid`,`name`,`hp`,`dep`,`rdate`) values ('a103','김춘추','010-1234-1003',101,'2020-11-19 11:39:48');
insert into `Member` values ('a104','장보고','010-1234-1004','대리',102,'2020-11-19 11:39:48');
insert into `Member` values ('a105','강감찬','010-1234-1005','과장',102,'2020-11-19 11:39:48');
insert into `Member` values ('a106','이성계','010-1234-1006','차장',103,'2020-11-19 11:39:48');
insert into `Member` values ('a107','정철','010-1234-1007','차장',103,'2020-11-19 11:39:48');
insert into `Member` values ('a108','이순신','010-1234-1008','부장',104,'2020-11-19 11:39:48');
insert into `Member` values ('a109','허균','010-1234-1009','부장',104,'2020-11-19 11:39:48');
insert into `Member`  (`uid`,`name`,`hp`,`dep`,`rdate`) values ('a110','정약용','010-1234-1010',105,'2020-11-19 11:39:48');
insert into `Member`  (`uid`,`name`,`hp`,`dep`,`rdate`) values ('a111','박지원','010-1234-1011',105,'2020-11-19 11:39:48');


create table `Department` (
	`depNo`		int primary key,
    `name`		varchar(10) not null,
    `tel`		char(12) not null
);

insert into `Department` values (101,'영업1부','051-512-1001');
insert into `Department` values (102,'영업2부','051-512-1002');
insert into `Department` values (103,'영업3부','051-512-1003');
insert into `Department` values (104,'영업4부','051-512-1004');
insert into `Department` values (105,'영업5부','051-512-1005');
insert into `Department` values (106,'영업지원부','051-512-1006');
insert into `Department` values (107,'인사부','051-512-1007');



 create table `Sales` (
	`seq`		int primary key auto_increment,
    `uid`		varchar(10) not null,
    `year`		year not null,
    `month`		int not null,
    `sale`		int not null
 );
 
 drop table `sales`;
 
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a101', '2018', 1 , 98100);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a102', '2018', 1 , 136000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a103', '2018', 1 , 80100);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a104', '2018', 1 , 78000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a105', '2018', 1 , 93000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a101', '2018', 2 , 23500);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a102', '2018', 2 , 126000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a103', '2018', 2 , 18500);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a105', '2018', 2 , 19000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a106', '2018', 2 , 53000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a101', '2019', 1 , 24000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a102', '2019', 1 , 109000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a103', '2019', 1 , 101000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a104', '2019', 1 , 53500);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a107', '2019', 1 , 24000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a102', '2019', 2 , 160000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a103', '2019', 2 , 101000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a104', '2019', 2 , 43000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a105', '2019', 2 , 24000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a106', '2019', 2 , 109000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a102', '2020', 1 , 201000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a104', '2020', 1 , 63000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a105', '2020', 1 , 74000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a106', '2020', 1 , 122000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a107', '2020', 1 , 111000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a102', '2020', 2 , 120000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a103', '2020', 2 , 93000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a104', '2020', 2 , 84000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a105', '2020', 2 , 180000);
 insert into `Sales`  (`uid`,`year`,`month`,`sale`) values ('a108', '2020', 2 , 76000);







#실습 4-3
#실습 4-4
#실습 4-5
#실습 4-6
#실습 4-7
#실습 4-8
#실습 4-9
#실습 4-10
#실습 4-11
#실습 4-12
#실습 4-13
#실습 4-14
#실습 4-15
#실습 4-16
#실습 4-17