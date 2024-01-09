 # 날짜 : 2024/01/05
 # 이름 : 이예나
 # 내용 : SQL 연습문제1
 
 #실습 1-2
 drop table `customer`;
 Create table `Customer` (
	`custId`			varchar(10) primary key,
    `name`			varchar(10) not null,
    `hp`			char(13) unique,
    `addr`			varchar(100),
    `rdate`			date not null
 );
 
 create table `Product` (
	`prodNo`		int primary key,
    `prodName`		varchar(10) not null,
    `stock`			int not null,
    `price`			int,
    `company`		varchar(20)
 );
 
 create table `Order` (
	`orderNo`			int primary key auto_increment,
    `orderId`			varchar(10) not null,
    `orderProduct`		int not null,
    `orderCount`		int default 1 not null , 
    `orderDate`			datetime not null
 );
 
 
 

 #실습 1-3
 insert into `Customer` values ('c101','김유신','010-1234-1001','김해시 봉황동','2022-01-01');
 insert into `Customer` values ('c102','김춘추','010-1234-1002','경주시 보문동','2022-01-02');
 insert into `Customer` values ('c103','장보고','010-1234-1003','완도군 청산면','2022-01-03');
 insert into `Customer` values ('c104','강감찬','010-1234-1004','서울시 마포구','2022-01-04');
 insert into `Customer` (`custId`,`name`,`rdate`) values ('c105','이성계','2022-01-05');
 insert into `Customer` values ('c106','정철','010-1234-1006','경기도 용인시','2022-01-06');
 insert into `Customer`(`custId`,`name`,`rdate`) values ('c107','허준','2022-01-07');
 insert into `Customer` values ('c108','이순신','010-1234-1008','서울시 영등포구','2022-01-08');
 insert into `Customer` values ('c109','송상현','010-1234-1009','부산시 동래구','2022-01-09');
 insert into `Customer` values ('c110','정약용','010-1234-1010','경기도 광주시','2022-01-10');
 

 insert into `Product` values ('1','새우깡',5000,1500,'농심');
 insert into `Product` values ('2','초코파이',2500,2500,'오리온');
 insert into `Product` values ('3','포카칩',3600,1700,'오리온');
 insert into `Product` values ('4','양파링',1250,1800,'농심');
 insert into `Product` (`prodNo`,`prodName`,`stock`,`company`)values ('5','죠리퐁',2200,'크라운');
 insert into `Product` values ('6','마가렛트',3500,3500,'롯데');
 insert into `Product` values ('7','뿌셔뿌셔',1650,1200,'오뚜기');
 
 
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c102',3,2,'2022-07-01 13:15:10');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c101',4,1,'2022-07-01 14:16:11');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c108',1,1,'2022-07-01 17:23:18');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c109',6,5,'2022-07-02 10:46:36');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c102',2,1,'2022-07-03 09:15:37');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c101',7,3,'2022-07-03 12:35:12');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c110',1,2,'2022-07-03 16:55:36');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c104',2,4,'2022-07-04 14:23:23');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c102',1,3,'2022-07-04 21:54:34');
 insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values ('c107',6,1,'2022-07-05 14:21:03');
 
 #실습 1-4
 select * from `Customer` ;
 
 #실습 1-5
 select `custId`,`name`,`hp` from `Customer`; 
 
 #실습 1-6
 select * from `product`;
 
 #실습 1-7
 select `company` from `product`;
 
 #실습 1-8
 select distinct `company` from `product`;
 
 #실습 1-9
 select `prodName`,`price` from `product`;
 
 #실습 1-10
 select `prodName`,`price`+500 as `조정단가`from `product`;
 
 #실습 1-11
 select `prodName`, `stock`, `price` from `product` where `company`='오리온'; 
 
 #실습 1-12
 select `orderProduct`,`orderCount`,`orderDate` from `Order` where `orderId`='c102';
 
 #실습 1-13
 select `orderProduct`,`orderCount`,`orderDate` 
		from `order`
        where `orderId`='c102' and `orderCount`<='2';
        
 #실습 1-14
 select * from `product` where `price`>='1000' and `price`<='2000';
 
 #실습 1-15
 select `custid`,`name`,`hp`,`addr` from `customer` where `name` like '김%';
 
 #실습 1-16
 select `custid`,`name`,`hp`,`addr` from `customer` where `name` like '__';
 
 #실습 1-17
 select * from `customer` where `hp` is null;
 
 #실습 1-18
 select * from `customer` where `addr` is not null;
 
 #실습 1-19
 select * from `customer` order by `rdate` desc;
 
 #실습 1-20
 select * from `order` where `orderCount` >= 3 order by `orderCount` desc, `orderProduct` asc;
 
 #실습 1-21
 select avg(`price`) from `product`;
 
 #실습 1-22
 select sum(`stock`) as `재고량 합계` from `product` where `company`='농심';
 
 #실습 1-23
 select count(*) as `고객수` from `customer`;
 
 #실습 1-24
 select count(distinct `company`) as `제조업체 수` from `product`;
 
 #실습 1-25
 select `orderProduct` as `주문 상품번호`, sum(`orderCount`) As `총 주문수량` 
 from `order` group by `orderProduct` order by `주문 상품번호` ;
 
 #실습 1-26
 select `company` as `제조업체`, count(*) as `제품수`, max(`price`) as `최고가` 
 from `product` group by `company` order by `company`;
 
 #실습 1-27
 select `company` as `제조업체`, count(*) as `제품수`, max(`price`) as `최고가` 
 from `product` group by `company` having `제품수` >=2;
 
 #실습 1-28
 select `orderProduct`, 
		`orderId`, 
        sum(`orderCount`) as `총 주문수량` 
 from `Order` 
 group by `orderProduct`, `orderId` 
 order by `orderProduct` ;
 
 
 #실습 1-29
 select a.orderId, b.prodName from `order` as a 
 join `product` as b 
 on  a.orderProduct = b.prodNo 
 where `orderid` = 'c102';
 
 
 #실습 1-30
 select `orderid`, `name`, `prodName`, `orderDate` 
		from `Order` as a JOIN `customer` 
        as b On a.orderId = b.custId 
        join `product` as c ON a.orderProduct = c.prodNo 
        where left(`orderDate`, 10) = '2022-07-03';
 
 
 
 
 