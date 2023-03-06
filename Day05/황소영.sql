USE bookrentalshop;

-- 1번 문제
SELECT CONCAT(LEFT(m.Names, 1),
			  INSERT(m.Names, 1, 1, ',')) AS '회원명'
	 , SUBSTRING_INDEX(m.addr, ' ', -1) AS '주소'
     , m.Mobile AS '폰번호'
     , UPPER(m.Email) AS '이메일'
  FROM membertbl AS m
  ORDER BY m.email DESC;

-- 2번 문제
SELECT d.Names AS '장르'
	 , b.Author AS '작가'
	 , b.Names AS '책이름'
  FROM bookstbl AS b
 INNER JOIN divtbl AS d
    ON b.Division = d.Division
 ORDER BY d.Names ASC, b.Author ASC;

-- 3번 문제
SELECT *
  FROM divtbl;

START TRANSACTION;

INSERT INTO divtbl
(Division, Names)
VALUE
('I002', '네트워크');

COMMIT;
ROLLBACK;

-- 4번 문제
SELECT *
  FROM membertbl;
  
START TRANSACTION;

UPDATE membertbl
   SET levels = 'D'
	 , mobile = '010-9839-9999'
 WHERE Names = '성명건';

COMMIT;
ROLLBACK; 

-- 5번 문제
SELECT IFNULL(
	   (SELECT Names 
		  FROM divtbl 
		 WHERE DIVISION = bb.Division), '--합계--') AS '장르'
	, bb.장르별총합계
FROM(
		SELECT b.Division
	  , CONCAT(FORMAT(SUM(b.price), 0,000), '원') AS '장르별총합계'
		FROM bookstbl AS b
		GROUP BY b.DIVISION WITH ROLLUP
  ) AS bb
ORDER BY FIELD(장르, '--합계--') ASC, 장르 ASC;