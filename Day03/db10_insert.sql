-- INSERT
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES
('HW', '소영', 1997, '부산', '010', '38551613', '156', '2023-03-02');

-- 컬럼을 다 적을때 입력안할 컬럼은 NULL로 지정
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES
('HGS', '홍길순', 2000, '한양', NULL, NULL, NULL, NULL);

-- NULL 컬럼은 생략가능
INSERT INTO usertbl
(userID, name, birthYear, addr)
VALUES
('SHM', '손흥민', 1991, '서울');

-- 컬럼 지정을 생략가능(단, 입력값의 순서가 컬럼 순서와 일치해야함)
INSERT INTO usertbl VALUES
('SJW', '손정웅', 1969, '서울', '010', '55664433', '176', NULL);

-- AOTO_INCREMENT 의 경우 필드값을 입력하지 않아도 됨
-- buytbl 의 num은 자동증가(값이 중복되어도 들어가는 단점이 존재/지워도 값이 되돌아가지않음)
INSERT INTO buytbl
(userID, prodName, groupName, price, amount)
VALUES
('HW', '청바지', '의류', 5000, 1);