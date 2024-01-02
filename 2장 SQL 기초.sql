#날짜 : 2024/01/02
#이름 : 이예나
#내용 : 2장 SQL 기초

#실습 2-1
CREATE TABLE `User1` (
`uid` VARCHAR(10),
`name` varchar(10),
`hp` char(13),
`age` INT
);

#실습 2-2
insert INTO `USER1` values ('A101','김유신','010-1234-1111',25);
insert INTO `USER1` values ('A102','김춘추', '010-1234-2222', 23);
INSERT INTO `USER1` VALUES ('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `USER1` (`uid`, `name`, `age`) VALUES ('A104','강감찬','45');
insert INTO `USER1` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555';

#실습 2-3
select * from `user1`;
select * from `user1` where `name`='김춘추';
select * from `user1` where `age` < 30;
select * from `user1` where `age` >= '30';
select `uid`,`name`,`age` from `user1`;


#실습 2-4
update `user1` set `hp`='010-1234-4444' where `uid`='A104';
update `user1` set `age`='51' where `uid`='A105';
update `user1` set `hp`='010-1234-1001', `age`=27 where `uid`='A101';

#실습 2-5
delete from `user1` where `uid`='A101';
delete from `user1` where `uid`='A102' AND `age`=25;
delete from `user1` where `age` >= 30;

#실습 2-6
ALTER table `USER1` ADD `gender` TINYINT;
ALTER TABLE `USER1` ADD `birth` CHAR(10) AFTER `name`;
ALTER TABLE `USER1` MODIFY `gender` CHAR(1);
ALTER TABLE `USER1` modify `age` tinyint;
ALTER TABLE `USER1` DROP `gender` ;

#실습 2-7
create table `User1Copy` LIKE `User1`;
INSERT INTO `User1copy` SELECT * FROM `User1`;

#실습 2-8
drop table `user1copy`;
create table `회원 테이블(Tb1User)` (
`user_id` varchar(10),
`user_name` varchar(10),
`user_hp` char(13),
`user_age` tinyint,
`user_addr` varchar(20)
);

insert into `회원 테이블(tb1user)` values ('p101','김유신','010-1234-1001','25','경남 김해시');
insert into `회원 테이블(tb1user)` values ('p102','김춘추','010-1234-1002','23','경남 경주시');
insert into `회원 테이블(tb1user)` values ('p103','장보고', null ,'31', '전남 완도군');
insert into `회원 테이블(tb1user)` (`user_id`,`user_name`,`user_addr`) values ('p104','강감찬','서울시 중구');
insert into `회원 테이블(tb1user)` set `user_id`='p105', `user_name`='이순신', `user_hp`='010-1234-1005', `user_age`='50';

delete from `회원 테이블(tb1user)` where `user_id` = 'p105';
insert into `회원 테이블(tb1user)` set `user_id`='p105', `user_name`='이순신', `user_hp`='010-1234-1005', `user_age`='50';



create table `제품 테이블(Tb1product)` (
`prod_no` int,
`prod_name` varchar(10),
`prod_price` int,
`Prod_stock` int,
`prod_complany` varchar(10),
`prod_date` date
);

insert into `제품 테이블(Tb1product)` values ('1001','냉장고', '800000','25','LG전자','2022-01-06');
insert into `제품 테이블(Tb1product)` values ('1002','노트북','1200000','120','삼성전자','2022-01-07');
insert into `제품 테이블(Tb1product)` values ('1003','모니터','350000','35','LG전자','2023-01-01');
insert into `제품 테이블(Tb1product)` values ('1004','세탁기','1000000','80','삼성전자','2021-01-01');
insert into `제품 테이블(Tb1product)` values ('1005','컴퓨터','1500000','20','삼성전자','2023-10-01');
insert into `제품 테이블(Tb1product)` set `prod_no`='1006', `prod_name`='휴대폰', `prod_price`='950000', `prod_stock`='102';


#실습 2-9
select * from `회원 테이블(tb1user)`;
select `user_name` from `회원 테이블(tb1user)`;
select `user_name`, `user_hp` from `회원 테이블(tb1user))`;
select * from `회원 테이블(tb1user)` where `user_id`='p102';
select * from `회원 테이블(tb1user)` where `user_id`='p104' or `user_id` = 'p105';
select * from `회원 테이블(tb1user)` where `user_addr` = '부산시 금정구'; 
select * from `회원 테이블(tb1user)` where `user_age` > 30 ; 
select * from `회원 테이블(tb1user)` where `user_hp` is null ;
update `회원 테이블(tb1user)` set `user_age`=42 where `user_id` = 'p104'; 
update `회원 테이블(tb1user)` set `user_addr`='부산시 진구' where `user_id` = 'p105'; 
delete from `회원 테이블(tb1user)` where `user_id` = 'p103';

select * from  `제품 테이블(Tb1product)`;
select `prod_name` from  `제품 테이블(Tb1product)`;
select `prod_name`, `prod_complany`, `prod_price` from  `제품 테이블(Tb1product)`;
select * from  `제품 테이블(Tb1product)` where `prod_complany`='삼성전자';
update  `제품 테이블(Tb1product)` set
									`prod_complany`='삼성전자',
									`prod_date`='2024-01-01'
                                    where
                                    `prod_no`='1006';
