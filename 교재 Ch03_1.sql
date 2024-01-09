#날짜 : 2024/01/08
#이름 : 이예나
#내용 : 교재Ch03 SQL 기본문법


#손코딩 P111
USE market_db;

#손코딩 P112
SELECT * FROM member;

#손코딩 P114
SELECT mem_name FROM member;

#손코딩 P115
SELECT addr, debut_date, mem_name from member;

#손코딩 P116
SELECT * FROM member WHERE mem_name = '블랙핑크';

#손코딩 P117
SELECT * FROM member WHERE mem_number = 4;
SELECT mem_id, mem_name 
	FROM member
    WHERE height <= 162;
SELECT mem_name, height, mem_number
	FROM member
    WHERE height >= 165 AND mem_number > 6;
    
    
#손코딩 P118
#OR
SELECT mem_name, height, mem_number
	FROM member
    WHERE height >= 165 OR mem_number > 6;
    
#BETWEEN~AND
SELECT mem_name, height
	FROM member
    WHERE height >= 163 AND height <= 165;
SELECT mem_name, height
	FROM member
    WHERE height BETWEEN 163 AND 165;
    
    
#손코딩 P119
SELECT mem_name, addr
	FROM member
    WHERE addr = '경기' OR addr = '전남' OR addr = '경남';
 #IN()   
SELECT mem_name, addr
	FROM member
	WHERE addr IN('경기','전남','경남');
    
 #LIKE
 SELECT *
	FROM member
    WHERE mem_name LIKE '우%';
    
    
#손코딩 P120
SELECT *
	FROM member
    WHERE mem_name LIKE '__핑크';


