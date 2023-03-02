-- UPDATE & TRANSACTION
-- 하나의 일이 완전히 완료되거나, 완전히 실패하거나
--  TRANSACTION 써야 복구가능(반드시 직전에 실행했는지 확인할것)
START TRANSACTION;

-- 경고! UPDATE 구문에는 WHERE절 빼면 안됨!
UPDATE usertbl_bak
   SET mobile1 = '010'
	 , mobile2 = '66667788'
	 , addr = '부산'
 WHERE userID = 'HW';
      
COMMIT;
ROLLBACK;

-- DELETE
-- WHERE절이 빠지면 안됨
DELETE FROM usertbl_bak
 WHERE userID = 'HGS';