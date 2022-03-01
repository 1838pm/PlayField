-------------------------------Member Table------------------------------
-------------------------------------------------------------------------

DROP TABLE MEMBER CASCADE CONSTRAINTS;
CREATE TABLE MEMBER(
    ID VARCHAR2(200) PRIMARY KEY,
    PWD VARCHAR2(200) NOT NULL,
    NAME VARCHAR2(200) NOT NULL,
    NICK VARCHAR2(200) NOT NULL,
    PHONE VARCHAR2(200) NOT NULL,
    MAIL VARCHAR2(200) NOT NULL,
    AGE VARCHAR2(200) NOT NULL,
    HEIGHT VARCHAR2(200) NOT NULL,
    WEIGHT VARCHAR2(200) NOT NULL,
    POSITION VARCHAR2(200) NOT NULL,
    ATHLETE VARCHAR2(200) NOT NULL,
    LEVELS VARCHAR2(200) NOT NULL,
    POINT VARCHAR2(200) DEFAULT '0',
    ROLE VARCHAR2(200) DEFAULT 'MEMBER',
    STATUS VARCHAR2(200) DEFAULT 'Y'
);

DROP SEQUENCE SEQ_UNO;
CREATE SEQUENCE SEQ_UNO;

COMMENT ON COLUMN MEMBER.ID IS '회원아이디';
COMMENT ON COLUMN MEMBER.PASSWORD IS '회원비밀번호';
COMMENT ON COLUMN MEMBER.NAME IS '회원명';
COMMENT ON COLUMN MEMBER.NICK IS '닉네임';
COMMENT ON COLUMN MEMBER.PHONE IS '전화번호';
COMMENT ON COLUMN MEMBER.MAIL IS '이메일';
COMMENT ON COLUMN MEMBER.AGE IS '나이';
COMMENT ON COLUMN MEMBER.HEIGHT IS '키';
COMMENT ON COLUMN MEMBER.WEIGHT IS '몸무게';
COMMENT ON COLUMN MEMBER.POSITION IS '선호포지션';
COMMENT ON COLUMN MEMBER.ATHLETE IS '선수출신여부';
COMMENT ON COLUMN MEMBER.LEVELS IS '레벨';
COMMENT ON COLUMN MEMBER.POINT IS '포인트';
COMMENT ON COLUMN MEMBER.ROLE IS '권한';
COMMENT ON COLUMN MEMBER.STATUS IS '상태';


INSERT INTO MEMBER VALUES('ADMIN', 'ADMIN', 'ADMIN', 'ADMIN', '010-1234-5678', 'ADMIN@ADMIN.COM', '0000/12/12',
    '180', '70', 'FW', '선출', '세미', DEFAULT, 'ADMIN', DEFAULT);

COMMIT;

SELECT * FROM MEMBER;


-------------------------------Member Table------------------------------
-------------------------------------------------------------------------


-------------------------------Ground Table------------------------------
-------------------------------------------------------------------------
DROP TABLE GROUND CASCADE CONSTRAINTS;
CREATE TABLE GROUND (
    G_NO VARCHAR2(100) PRIMARY KEY,
    G_SVCNM VARCHAR2(500), 
    G_PLACENM VARCHAR2(50),
    G_AREANM VARCHAR2(50),
    G_URL VARCHAR2(1000),
    G_IMGURL VARCHAR2(1000),
    G_PLACE_X VARCHAR2(100),
    G_PLACE_Y VARCHAR2(100),
    G_PAY VARCHAR2(50),
    G_TEL VARCHAR2(100),
    G_START VARCHAR2(100),
    G_END VARCHAR2(100)
);

DROP SEQUENCE SEQ_GROUND_NO;
CREATE SEQUENCE SEQ_GROUND_NO;

INSERT INTO GROUND (
    G_NO,
    G_SVCNM,
    G_PLACENM,
    G_AREANM,
    G_URL,
    G_IMGURL,
    G_PLACE_X,
    G_PLACE_Y,
    G_PAY,
    G_TEL,
    G_START,
    G_END
) VALUES (
'S220112143538849507',
'풋살 / 방배 / 22년 3월 1~31일 / 평일 07:00~18:00 (선착순)',
'방배배수지체육공원',
'서초구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220223155039287833',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645599093165CN8N29HRU3MHA532A8SLBKJTQ',
'126.9924890287',
'37.4730044433',
'유료',
'02-2155-6211',
'07:00',
'15:00'
);

COMMIT;

SELECT * FROM GROUND;

SELECT G_NO,
       G_SVCNM,
       G_PLACENM,
       G_AREANM,
       G_URL,
       G_IMGURL,
       G_PLACE_X,
       G_PLACE_Y,
       G_PAY,
       G_TEL,
       G_START,
       G_END
FROM GROUND order BY G_NO DESC;

-------------------------------Ground Table------------------------------
-------------------------------------------------------------------------

------------------------------------------------
--------------- Board 관련 테이블 ------------
------------------------------------------------

DROP TABLE BOARD CASCADE CONSTRAINTS;
CREATE TABLE BOARD (	
    NO NUMBER,
    WRITER_ID VARCHAR2(200), 
	TITLE VARCHAR2(50), 
	CONTENT VARCHAR2(2000), 
	TYPE VARCHAR2(100), 
	ORIGINAL_FILENAME VARCHAR2(100), 
	RENAMED_FILENAME VARCHAR2(100), 
	READCOUNT NUMBER DEFAULT 0, 
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATE DEFAULT SYSDATE, 
    MODIFY_DATE DATE DEFAULT SYSDATE,
    CONSTRAINT PK_BOARD_NO PRIMARY KEY(NO),
    CONSTRAINT FK_WRITER FOREIGN KEY(WRITER_ID) REFERENCES MEMBER(ID) ON DELETE SET NULL
);

COMMENT ON COLUMN BOARD.NO IS '게시글번호';
COMMENT ON COLUMN BOARD.WRITER_ID IS '게시글작성자';
COMMENT ON COLUMN BOARD.TITLE IS '게시글제목';
COMMENT ON COLUMN BOARD.CONTENT IS '게시글내용';
COMMENT ON COLUMN BOARD.TYPE IS '게시글 타입';
COMMENT ON COLUMN BOARD.ORIGINAL_FILENAME IS '첨부파일원래이름';
COMMENT ON COLUMN BOARD.RENAMED_FILENAME IS '첨부파일변경이름';
COMMENT ON COLUMN BOARD.READCOUNT IS '조회수';
COMMENT ON COLUMN BOARD.STATUS IS '상태값(Y/N)';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '게시글올린날짜';
COMMENT ON COLUMN BOARD.MODIFY_DATE IS '게시글수정날짜';

DROP SEQUENCE SEQ_BOARD_NO;
CREATE SEQUENCE SEQ_BOARD_NO;


DESC BOARD;

INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL, 'admin', '게시글 1',  '게시글 테스트 입니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', SYSDATE, SYSDATE);

BEGIN
    FOR N IN 1..52
    LOOP
        INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL, 'admin', '게시글 '||SEQ_BOARD_NO.CURRVAL , '게시글 테스트입니다.'||SEQ_BOARD_NO.CURRVAL, 'B'||SEQ_BOARD_NO.CURRVAL, null, null, DEFAULT, 'Y', SYSDATE, SYSDATE);
    END LOOP;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK;
END;
/


COMMIT;
SELECT * FROM BOARD;

--------------------------------------------------------------------
------------------------- REPLY 관련 테이블 -------------------------
-------------------------------------------------------------------
DROP TABLE REPLY CASCADE CONSTRAINTS;

CREATE TABLE REPLY(
  NO NUMBER PRIMARY KEY,
  BOARD_NO NUMBER,
  WRITER_ID VARCHAR2(200),
  CONTENT VARCHAR2(400),
  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATE DEFAULT SYSDATE,
  MODIFY_DATE DATE DEFAULT SYSDATE,
  FOREIGN KEY (BOARD_NO) REFERENCES BOARD,
  FOREIGN KEY (WRITER_ID) REFERENCES MEMBER
);

DROP SEQUENCE SEQ_REPLY_NO;
CREATE SEQUENCE SEQ_REPLY_NO;

COMMENT ON COLUMN "REPLY"."NO" IS '댓글번호';
COMMENT ON COLUMN "REPLY"."BOARD_NO" IS '댓글이작성된게시글';
COMMENT ON COLUMN "REPLY"."WRITER_ID" IS '댓글작성자';
COMMENT ON COLUMN "REPLY"."CONTENT" IS '댓글내용';
COMMENT ON COLUMN "REPLY"."STATUS" IS '상태값(Y/N)';
COMMENT ON COLUMN "REPLY"."CREATE_DATE" IS '댓글올린날짜';
COMMENT ON COLUMN "REPLY"."MODIFY_DATE" IS '댓글수정날짜';

INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 51, 'admin', '안녕하세요.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 50, 'admin', '반갑습니다.', DEFAULT, DEFAULT, DEFAULT);

BEGIN
    FOR N IN 1..52
    LOOP
        INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, N, 'admin', '안녕하세요.', DEFAULT, DEFAULT, DEFAULT);
        INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, N, 'admin', '안녕하세요.', DEFAULT, DEFAULT, DEFAULT);
        INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, N, 'admin', '안녕하세요.', DEFAULT, DEFAULT, DEFAULT);
    END LOOP;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK;
END;
/

COMMIT;

SELECT * FROM REPLY;








INSERT INTO GROUND VALUES (
'S220112143538849507',
'월드컵(난지천)공원 제2 풋살장',
'서울특별시 산악문화체험센터>난지천 공원 제2 풋살장',
'마포구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220112143538849507',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1641966090488N87Q87POXJ4OAUL4EVVXOVHKS',
'126.88127742009968',
'37.57577125294095',
'유료',
'02-300-5576',
'07:20',
'17:30'
);
INSERT INTO GROUND VALUES (
'S220112150944745118',
'월드컵(난지천)공원 풋살장',
'산악 문화 체험센터 난지천 공원 제1 풋살장',
'마포구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220112150944745118',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1641967879341TJWE6D4FV01D8DRJU39HSIQO4',
'126.88127742009968',
'37.57577125294095',
'유료',
'02-300-5576',
'07:20',
'17:30'
);
INSERT INTO GROUND VALUES (
'S220214104838997992',
'3월 &lt;평일주간&gt;월드컵(난지천)공원 풋살장 대여 - 2월15일(화) 오후2시 접수',
'산악 문화 체험센터 난지천 공원 제3 풋살장',
'마포구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220214104838997992',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=16448034945058W8J79T0QXOAYVJKAZEG8S1AX',
'126.88127742009968',
'37.57577125294095',
'유료',
'02-300-5576',
'09:30',
'17:30'
);INSERT INTO GROUND VALUES (
'S140714101055498825',
'잠실제1풋살경기장-토/일/공휴일(야간사용)',
'잠실 종합 운동장 제1 풋살경기장',
'송파구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S140714101055498825',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=SVC_IMG_FILE_64438',
'127.07594025137807',
'37.51619977107392',
'유료',
'02-2240-8782',
'17:00',
'23:00'
);
INSERT INTO GROUND VALUES (
'S140714101055499926',
'잠실제1풋살경기장-토/일/공휴일(야간사용)',
'잠실 종합 운동장 제2 풋살경기장',
'송파구',
'https://stadium.seoul.go.kr/files/2016/08/photo_jamsil_futsal02.jpg',
'https://stadium.seoul.go.kr/files/2016/08/photo_jamsil_futsal02.jpg',
'127.07594025137807',
'37.51619977107392',
'유료',
'02-2240-8782',
'17:00',
'23:00'
);
INSERT INTO GROUND VALUES (
'S150713145938618139',
'잠실제3풋살경기장-토/일/공휴일(주간사용)',
'잠실 종합 운동장 제3 풋살경기장',
'송파구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S150713145938618139',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=SVC_IMG_FILE_90274',
'127.07594025137807',
'37.51619977107392',
'유료',
'02-2240-8782',
'09:00',
'19:00'
);INSERT INTO GROUND VALUES (
'S220125081601680400',
'2022년 영등포공원 풋살경기장(평일주간)',
'영등포 공원 풋살 경기장',
'영등포구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220125081601680400',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1643066352937S8GDZYXJ7O7MLACM5LSRUO9P2',
'126.91228',
'37.51557',
'유료',
'02-2670-3774',
'08:00',
'16:00'
);INSERT INTO GROUND VALUES (
'S190522144836251426',
'풋살경기장(구일역 하부)',
'안양천 체육시설 풋살 경기장(구일역 하부)',
'구로구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S190522144836251426',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=SVC_IMG_FILE_241687',
'126.86937274726102',
'37.49493348712842',
'무료',
'02-860-2023',
'08:00',
'22:00'
);INSERT INTO GROUND VALUES (
'S211202164423368008',
'2022년 중랑물재생센터 풋살장(추첨제)',
'중랑물 재생센터 풋살장',
'성동구',
'https://mblogthumb-phinf.pstatic.net/MjAxOTEwMDRfNjAg/MDAxNTcwMTQyODAzMDcx.2xOkzug_Tbrx70LlRT5CA4HzNZT4gBe6DjoAThLkTL0g.YzgmuvNoQAq3YAX_tRDOVrJffDO2g-Yhp2uaMhK3vXcg.JPEG.jbg1925/20190827_143347.jpg?type=w800',
'https://mblogthumb-phinf.pstatic.net/MjAxOTEwMDRfNjAg/MDAxNTcwMTQyODAzMDcx.2xOkzug_Tbrx70LlRT5CA4HzNZT4gBe6DjoAThLkTL0g.YzgmuvNoQAq3YAX_tRDOVrJffDO2g-Yhp2uaMhK3vXcg.JPEG.jbg1925/20190827_143347.jpg?type=w800',
'127.0595',
'37.56057',
'무료',
'02-2211-2568',
'07:00',
'19:00'
);INSERT INTO GROUND VALUES (
'S220124150140807638',
'2월 서서울호수공원 풋살장 대여 (평일주간) 1월25일 오후2시 접수',
'서서울 호수공원 풋살장',
'양천구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220124150140807638',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=16430041951081WXG1X0XU5KGT5RBI66IBPASA',
'126.83021',
'37.52707',
'유료',
'02-2604-3004',
'06:00',
'18:00'
);INSERT INTO GROUND VALUES (
'S211230153319217708',
'2022년 월드컵 풋살구장(평일주간)',
'서울 월드컵 경기장 풋살구장',
'마포구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S211230153319217708',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1640846465231XH8QBWOTDUV88YDKVQSQ71WS5',
'126.89900366993466',
'37.57254029207188',
'유료',
'02-2128-2966',
'08:00',
'18:00'
);INSERT INTO GROUND VALUES (
'S220221131954299297',
'[평일주간] 2022년 고척스카이돔 풋살구장(공통) (3월)',
'고척 스카이돔 풋살구장',
'구로구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220221131954299297',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645417264413SQHA09MPTB5J09P0X8NFIWFY5',
'126.8669',
'37.49683',
'유료',
'02-2128-2352',
'10:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220112143538849507',
'풋살 / 방배 / 22년 3월 1~31일 / 평일 07:00~18:00 (선착순)',
'방배 배수지 체육공원',
'서초구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220223155039287833',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645599093165CN8N29HRU3MHA532A8SLBKJTQ',
'126.9924890287',
'37.4730044433',
'유료',
'02-2155-6211',
'07:00',
'15:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902590',
'풋살 / 반포 / 22년 (02.02.~02.28.)/ 08:00~18:00',
'반포 종합운동장',
'서초구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220126091019902590',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=16431559244538MJH3181BLN3MX4ZCXR516GSB',
'126.9942640531',
'37.5005393518',
'무료',
'02-2155-6214',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220112143538849507',
'풋살 / 방배 / 22년 3월 1~31일 / 평일 07:00~18:00 (선착순)',
'방배 배수지 체육공원',
'서초구',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220223155039287833',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645599093165CN8N29HRU3MHA532A8SLBKJTQ',
'126.9924890287',
'37.4730044433',
'유료',
'02-2155-6211',
'07:00',
'15:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902595',
'풋살 / 반포 / 22년 (02.02.~02.28.)/ 08:00~18:00',
'김병지 축구클럽 풋살장 마포점(실내)',
'마포구',
'https://modo-phinf.pstatic.net/20191023_23/1571814968902nqLC6_JPEG/mosate1IjY.jpeg?type=w1100',
'https://modo-phinf.pstatic.net/20191023_23/1571814968902nqLC6_JPEG/mosate1IjY.jpeg?type=w1100',
'126.7655695',
'37.4377735',
'무료',
'1644-7552',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902593',
'풋살 / 반포 / 22년 (02.02.~02.28.)/ 08:00~18:00',
'KSU 실내 풋살장',
'양천구',
'https://cdn.discoverynews.kr/news/photo/201809/50386_2242_4617.jpg',
'https://cdn.discoverynews.kr/news/photo/201809/50386_2242_4617.jpg',
'126.7655697',
'37.4376087',
'무료',
'',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902598',
'풋살 / 반포 / 22년 (02.02.~02.28.)/ 08:00~18:00',
'광운대 SMC 풋살PARK 실내구장',
'마포구',
'http://www.futsalmania.co.kr/shop/data/goods/1542367233418l9.jpg',
'http://www.futsalmania.co.kr/shop/data/goods/1542367233418l9.jpg',
'126.7655673',
'37.4379882',
'무료',
'',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902628',
'풋살 / 반포 / 22년 (02.02.~02.28.)/ 08:00~18:00',
'주사랑 FC 풋살장 삼전점(실내)',
'송파구',
'https://mblogthumb-phinf.pstatic.net/MjAxOTA4MDhfMTE4/MDAxNTY1MjU5NzA0NzY4.AnQksY5yeP9c5DN96_S9Q3tevtbaCt_lqzy3RqwwAuEg._lTUqXvNmTn9FPOL0fmfh6BuOhE9fDIJX3wiRMjnLj4g.JPEG.zuckcorp/2.JPG?type=w2',
'https://mblogthumb-phinf.pstatic.net/MjAxOTA4MDhfMTE4/MDAxNTY1MjU5NzA0NzY4.AnQksY5yeP9c5DN96_S9Q3tevtbaCt_lqzy3RqwwAuEg._lTUqXvNmTn9FPOL0fmfh6BuOhE9fDIJX3wiRMjnLj4g.JPEG.zuckcorp/2.JPG?type=w2',
'127.0902701',
'37.5070416',
'무료',
'',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902720',
'풋살 / 반포 / 22년 (02.02.~02.28.)/ 08:00~18:00',
'하남 한사랑 실내풋살장',
'하남시',
'https://plab-football.s3.amazonaws.com/media/hn_hsr_coner.jpg',
'https://plab-football.s3.amazonaws.com/media/hn_hsr_coner.jpg',
'127.158339',
'37.5386154',
'무료',
'',
'08:00',
'18:00'
);