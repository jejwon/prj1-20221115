USE prj1;
DROP TABLE Member;
-- Member 테이블 만들기
CREATE TABLE Member (
	id VARCHAR(255) PRIMARY KEY,
    nickName VARCHAR(255) NOT NULL UNIQUE DEFAULT id,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    inserted DATETIME DEFAULT NOW()
);
DESC Member;

SELECT * FROM Member ORDER BY inserted DESC;

SELECT 
		id,
		password,
		email,
		inserted
	FROM
		Member
	ORDER BY
		id ;


-- Member 테이블에 nickName 컬럼 추가
ALTER TABLE Member
ADD COLUMN nickName VARCHAR(255) NOT NULL UNIQUE DEFAULT id AFTER id;

DESC Member;

SELECT * FROM Member;

SET SQL_SAFE_UPDATES = 1;

DELETE FROM Member
WHERE id <> 'abcd';

-- 게시물 작성자를 존재하는 Member.id로 변경, 존재하는 작성자로 변경 
UPDATE Board
	SET writer = 'asdf'
WHERE
	id > 0;
DESC Board;
-- Board.writer 가 Member.id 참조하도록 변경(존재하는 작성자로 변경해야 foreign key 추가 가능)
ALTER TABLE Board
ADD FOREIGN KEY (writer) REFERENCES Member(id);