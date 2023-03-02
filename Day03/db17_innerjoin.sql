/* 조인 */

-- inner join(기준없음)
SELECT B.num, B.userID, B.prodName
     , U.name, U.addr, U.birthYear
  FROM buytbl AS B
 INNER JOIN usertbl AS U
	ON B.userID = U.userID
 ORDER BY B.num DESC;
-- WHERE U.userID = 'jyp';