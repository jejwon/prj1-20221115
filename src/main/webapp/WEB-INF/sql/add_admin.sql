USE prj1;

-- 권한테이블 만들기
CREATE TABLE Authority (
	memberId VARCHAR(255) NOT NULL REFERENCES Member(id),
    auth VARCHAR(255) NOT NULL,
    PRIMARY KEY (memberId, auth)
);

INSERT INTO Authority (memberId, auth)
VALUES ('admin', 'admin');

SELECT * FROM Authority;

-- 권한테이블, 멤버테이블 조인 조회
	SELECT 
		id,
		nickName,
		password,
		email,
		inserted,
        a.auth
	FROM
		Member m LEFT JOIN Authority a ON m.id = a.memberId
	WHERE
		id = 'admin';
