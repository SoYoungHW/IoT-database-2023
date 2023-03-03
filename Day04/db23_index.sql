USE tabletbl;

CREATE TABLE TBL1 (
	ID INT NOT NULL PRIMARY KEY,
    bridge INT NULL,
    contents VARCHAR(5000)
);

-- sql DB의 usertbl 데이터중
-- userID, name, birthYear, addr 만 가져와서
-- tabledb,usertbl에 부어넣은 것
INSERT INTO tabledb.usertbl
SELECT userID, name, birthYear, addr
  FROM sqldb.usertbl;
  
SELECT * FROM usertbl WHERE name = '김범수';