-- 해야할일
CREATE TABLE TODO (
  DNO      INTEGER      NOT NULL COMMENT '프로젝트일련번호', -- 프로젝트일련번호
  DNAME    VARCHAR(255) NOT NULL COMMENT '프로젝트명', -- 프로젝트명
  CONTENT  TEXT         NOT NULL COMMENT '설명', -- 설명
  PRE_DATE DATETIME		NOT NULL COMMENT '예정일', -- 예정일
  STA_DATE DATETIME     NULL	 COMMENT '시작일', -- 시작일
  END_DATE DATETIME     NULL	 COMMENT '종료일', -- 종료일
  STATE    VARCHAR(2)   NOT NULL COMMENT '상태', -- 상태
  CRE_DATE DATETIME     NOT NULL COMMENT '생성일', -- 생성일
  TAGS     VARCHAR(255) NULL     COMMENT '태그' -- 태그
)
COMMENT '해야할일';

-- 해야할일
ALTER TABLE TODO
  ADD CONSTRAINT PK_TODO -- 해야할일 기본키
    PRIMARY KEY (
      DNO -- 프로젝트일련번호
    );
ALTER TABLE TODO
ADD CONSTRAINT CHECK (STATE IN ('o','x'));    
