USE prj1;

SET SQL_SAFE_UPDATES = 1;

DELETE FROM Member
WHERE id <> 'abcd';

SELECT * FROM Member;

-- 댓글 테이블에 작성자 추가(기본값 필요)
ALTER TABLE Reply
ADD COLUMN writer VARCHAR(255) NOT NULL DEFAULT 'asdf' REFERENCES Member(id) AFTER content;

ALTER TABLE Reply
MODIFY COLUMN writer VARCHAR(255) NOT NULL;
DESC Reply;

SELECT * FROM Reply ORDER BY 1 DESC;

-- 좋아요 테이블 만들기
CREATE TABLE BoardLike (
	boardId INT,
    memberId VARCHAR(255),
    PRIMARY KEY (boardId, memberId),
    FOREIGN KEY (boardId) REFERENCES Board(id),
    FOREIGN KEY (memberId) REFERENCES Member(id)
);

DESC BoardLike;
SELECT * FROM BoardLike;

