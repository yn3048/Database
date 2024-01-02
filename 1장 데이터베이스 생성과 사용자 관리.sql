#날짜 : 2024/01/02
#이름 : 이예나
#내용 : 1장 데이터베이스 생성과 사용자 관리

#실습 1-1
create DATABASE `studyDB`;
drop database `studydb`;


#실습 1-2
CREATE USER 'dpsk3048'@'%' identified by '1234';
GRANT ALL privileges ON `studydb`.* TO 'dpsk3048'@'%';
flush privileges;

#실습 1-3
alter USER 'dpsk3048'@'%' identified by 'abc1234';
drop user 'dpsk3048'@'%';
Flush privileges;
