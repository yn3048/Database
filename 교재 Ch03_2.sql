#날짜 : 2024/01/08
#이름 : 이예나
#내용 : 교재Ch03_2 SQL 좀더 깊게 알아보는 select문

#손코딩 P125
SELECT mem_id, mem_name, debut_date
	FROM member
	ORDER BY debut_date;
#손코딩 P126
SELECT mem_id, mem_name, debut_date
	FROM member
    ORDER BY debut_date DESC;

#SELECT mem_id, mem_name, debut_date, height
#	FROM member
#    ORDER BY height DESC
#	WHERE height >= 164;
# 오류 발생 => WHERE 절이 ORDER BY 앞에 위치해야 한다!!


#손코딩 P127
SELECT mem_id, mem_name, debut_date, height
	FROM member
    WHERE height >= 164
    ORDER BY height DESC;
    
SELECT mem_name, debut_date, height
	FROM member
    WHERE height >= 164
    ORDER BY height DESC, debut_date ASC;

#손코딩 P128
#LIMIT 출력 갯수 제한
SELECT * 
	FROM member
    LIMIT 3;

SELECT mem_name, debut_date
	FROM member
    ORDER BY debut_date
    LIMIT 3;
    
    
    
#손코딩 P129~P130
SELECT mem_name, height
	FROM member
    ORDER BY height DESC
    LIMIT 3, 2;    # LIMIT 시작(앞에 숫자), LIMIT 갯수(뒤에 숫자)

SELECT addr FROM member;   
SELECT addr FROM member ORDER BY addr;
SELECT DISTINCT addr FROM member;     #DISTINCT =>중복데이터 제거 

#손코딩 P131
SELECT mem_id, amount FROM buy ORDER BY mem_id;


#손코딩 P132
SELECT mem_id, sum(amount) FROM buy GROUP BY mem_id;
SELECT mem_id "회원 아이디", SUM(amount) "총 구매 개수"
	 FROM buy GROUP BY mem_id;
     
#손코딩 P133
#회원이 구매한 금액의 총합 구하기 가격(price)*수량
SELECT mem_id "회원 아이디", sum(price*amount) "총 구매 금액"
	FROM buy GROUP BY mem_id;
    
#AVG()=>평균 구하는 함수
SELECT avg(amount)"평균 구매 개수" FROM buy;

#손코딩 P134
#각 회원이 한 번 구매 시 평균 몇개를 구매했는지? 회원(mem_id)별로 구함
SELECT mem_id, AVG(amount) "평균 구매 개수"
	FROM buy
	GROUP BY mem_id;
SELECT COUNT(*)FROM member;

#연락처가 있는 회원 조회하기
SELECT COUNT(phone1) "연락처가 있는 회원" FROM member;

#Having 절
#회원 별 총 구매액 구하기
SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
		FROM buy
		GROUP BY mem_id;

#손코딩 P135
#SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
#	FROM buy
# WHERE SUM(price*amount) > 1000;
#    GROUP BY mem_id;    => 집계 함수는 where 절에 나타날 수 없다

#HAVING절 이용해서 총 구매액이 1000 이상인 회원 구하기 
SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
	 FROM buy
     GROUP BY mem_id
	 HAVING SUM(price*amount) > 1000;


#손코딩 P136
SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
	FROM buy
    GROUP BY mem_id
    HAVING SUM(price*amount) > 1000
    ORDER BY SUM(price*amount) DESC;



