-- 집계함수를 사용하기 위해서 / 그룹핑
USE sqldb;

-- GROUP BY에 작성된 컬럼명만 SELECT 절에 사용 가능
-- 합치기 힘든 / 합쳐도 의미가 없는 값이 있음
SELECT userID AS '아이디'
	   , SUM(amount) AS '구매갯수'
  FROM buytbl
 GROUP BY userID;
 
SELECT userID AS '아이디'
	   , AVG(amount) AS '평균구매갯수'
  FROM buytbl
 GROUP BY userID;
 
-- HAVING은 집계합수등의 결과값을 필터링하기 위해서
-- 컬럼이 아닌 것은 WHERE 절에 쓸 수 없기 때문에
-- HAVING 에는 함수식 혹은, ''를 떼고 적어줘야함
SELECT userID
	   , SUM(amount * price) AS '합산'
  FROM buytbl
  GROUP BY userID
  HAVING 합산 >= 1000;
  
-- ROLLUP 전체합계를 자동계산
-- ROLLUP을 사용하지 않을 경우 식이 복잡해짐
SELECT userID
	   , SUM(amount * price) AS '합산'
  FROM buytbl
  GROUP BY userID
  WITH ROLLUP;

                