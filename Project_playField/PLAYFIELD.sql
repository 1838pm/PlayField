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

COMMENT ON COLUMN MEMBER.ID IS 'ȸ�����̵�';
COMMENT ON COLUMN MEMBER.PASSWORD IS 'ȸ����й�ȣ';
COMMENT ON COLUMN MEMBER.NAME IS 'ȸ����';
COMMENT ON COLUMN MEMBER.NICK IS '�г���';
COMMENT ON COLUMN MEMBER.PHONE IS '��ȭ��ȣ';
COMMENT ON COLUMN MEMBER.MAIL IS '�̸���';
COMMENT ON COLUMN MEMBER.AGE IS '����';
COMMENT ON COLUMN MEMBER.HEIGHT IS 'Ű';
COMMENT ON COLUMN MEMBER.WEIGHT IS '������';
COMMENT ON COLUMN MEMBER.POSITION IS '��ȣ������';
COMMENT ON COLUMN MEMBER.ATHLETE IS '������ſ���';
COMMENT ON COLUMN MEMBER.LEVELS IS '����';
COMMENT ON COLUMN MEMBER.POINT IS '����Ʈ';
COMMENT ON COLUMN MEMBER.ROLE IS '����';
COMMENT ON COLUMN MEMBER.STATUS IS '����';


INSERT INTO MEMBER VALUES('ADMIN', 'ADMIN', 'ADMIN', 'ADMIN', '010-1234-5678', 'ADMIN@ADMIN.COM', '0000/12/12',
    '180', '70', 'FW', '����', '����', DEFAULT, 'ADMIN', DEFAULT);

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
'ǲ�� / ��� / 22�� 3�� 1~31�� / ���� 07:00~18:00 (������)',
'�������ü������',
'���ʱ�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220223155039287833',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645599093165CN8N29HRU3MHA532A8SLBKJTQ',
'126.9924890287',
'37.4730044433',
'����',
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
--------------- Board ���� ���̺� ------------
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

COMMENT ON COLUMN BOARD.NO IS '�Խñ۹�ȣ';
COMMENT ON COLUMN BOARD.WRITER_ID IS '�Խñ��ۼ���';
COMMENT ON COLUMN BOARD.TITLE IS '�Խñ�����';
COMMENT ON COLUMN BOARD.CONTENT IS '�Խñ۳���';
COMMENT ON COLUMN BOARD.TYPE IS '�Խñ� Ÿ��';
COMMENT ON COLUMN BOARD.ORIGINAL_FILENAME IS '÷�����Ͽ����̸�';
COMMENT ON COLUMN BOARD.RENAMED_FILENAME IS '÷�����Ϻ����̸�';
COMMENT ON COLUMN BOARD.READCOUNT IS '��ȸ��';
COMMENT ON COLUMN BOARD.STATUS IS '���°�(Y/N)';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '�Խñۿø���¥';
COMMENT ON COLUMN BOARD.MODIFY_DATE IS '�Խñۼ�����¥';

DROP SEQUENCE SEQ_BOARD_NO;
CREATE SEQUENCE SEQ_BOARD_NO;


DESC BOARD;

INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL, 'admin', '�Խñ� 1',  '�Խñ� �׽�Ʈ �Դϴ�.', 'B1', '�������ϸ�.txt', '��������ϸ�.txt', DEFAULT, 'Y', SYSDATE, SYSDATE);

BEGIN
    FOR N IN 1..52
    LOOP
        INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL, 'admin', '�Խñ� '||SEQ_BOARD_NO.CURRVAL , '�Խñ� �׽�Ʈ�Դϴ�.'||SEQ_BOARD_NO.CURRVAL, 'B'||SEQ_BOARD_NO.CURRVAL, null, null, DEFAULT, 'Y', SYSDATE, SYSDATE);
    END LOOP;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK;
END;
/


COMMIT;
SELECT * FROM BOARD;

--------------------------------------------------------------------
------------------------- REPLY ���� ���̺� -------------------------
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

COMMENT ON COLUMN "REPLY"."NO" IS '��۹�ȣ';
COMMENT ON COLUMN "REPLY"."BOARD_NO" IS '������ۼ��ȰԽñ�';
COMMENT ON COLUMN "REPLY"."WRITER_ID" IS '����ۼ���';
COMMENT ON COLUMN "REPLY"."CONTENT" IS '��۳���';
COMMENT ON COLUMN "REPLY"."STATUS" IS '���°�(Y/N)';
COMMENT ON COLUMN "REPLY"."CREATE_DATE" IS '��ۿø���¥';
COMMENT ON COLUMN "REPLY"."MODIFY_DATE" IS '��ۼ�����¥';

INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 51, 'admin', '�ȳ��ϼ���.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 50, 'admin', '�ݰ����ϴ�.', DEFAULT, DEFAULT, DEFAULT);

BEGIN
    FOR N IN 1..52
    LOOP
        INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, N, 'admin', '�ȳ��ϼ���.', DEFAULT, DEFAULT, DEFAULT);
        INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, N, 'admin', '�ȳ��ϼ���.', DEFAULT, DEFAULT, DEFAULT);
        INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, N, 'admin', '�ȳ��ϼ���.', DEFAULT, DEFAULT, DEFAULT);
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
'������(����õ)���� ��2 ǲ����',
'����Ư���� ��ǹ�ȭü�輾��>����õ ���� ��2 ǲ����',
'������',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220112143538849507',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1641966090488N87Q87POXJ4OAUL4EVVXOVHKS',
'126.88127742009968',
'37.57577125294095',
'����',
'02-300-5576',
'07:20',
'17:30'
);
INSERT INTO GROUND VALUES (
'S220112150944745118',
'������(����õ)���� ǲ����',
'��� ��ȭ ü�輾�� ����õ ���� ��1 ǲ����',
'������',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220112150944745118',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1641967879341TJWE6D4FV01D8DRJU39HSIQO4',
'126.88127742009968',
'37.57577125294095',
'����',
'02-300-5576',
'07:20',
'17:30'
);
INSERT INTO GROUND VALUES (
'S220214104838997992',
'3�� &lt;�����ְ�&gt;������(����õ)���� ǲ���� �뿩 - 2��15��(ȭ) ����2�� ����',
'��� ��ȭ ü�輾�� ����õ ���� ��3 ǲ����',
'������',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220214104838997992',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=16448034945058W8J79T0QXOAYVJKAZEG8S1AX',
'126.88127742009968',
'37.57577125294095',
'����',
'02-300-5576',
'09:30',
'17:30'
);INSERT INTO GROUND VALUES (
'S140714101055498825',
'�����1ǲ������-��/��/������(�߰����)',
'��� ���� ��� ��1 ǲ������',
'���ı�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S140714101055498825',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=SVC_IMG_FILE_64438',
'127.07594025137807',
'37.51619977107392',
'����',
'02-2240-8782',
'17:00',
'23:00'
);
INSERT INTO GROUND VALUES (
'S140714101055499926',
'�����1ǲ������-��/��/������(�߰����)',
'��� ���� ��� ��2 ǲ������',
'���ı�',
'https://stadium.seoul.go.kr/files/2016/08/photo_jamsil_futsal02.jpg',
'https://stadium.seoul.go.kr/files/2016/08/photo_jamsil_futsal02.jpg',
'127.07594025137807',
'37.51619977107392',
'����',
'02-2240-8782',
'17:00',
'23:00'
);
INSERT INTO GROUND VALUES (
'S150713145938618139',
'�����3ǲ������-��/��/������(�ְ����)',
'��� ���� ��� ��3 ǲ������',
'���ı�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S150713145938618139',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=SVC_IMG_FILE_90274',
'127.07594025137807',
'37.51619977107392',
'����',
'02-2240-8782',
'09:00',
'19:00'
);INSERT INTO GROUND VALUES (
'S220125081601680400',
'2022�� ���������� ǲ������(�����ְ�)',
'������ ���� ǲ�� �����',
'��������',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220125081601680400',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1643066352937S8GDZYXJ7O7MLACM5LSRUO9P2',
'126.91228',
'37.51557',
'����',
'02-2670-3774',
'08:00',
'16:00'
);INSERT INTO GROUND VALUES (
'S190522144836251426',
'ǲ������(���Ͽ� �Ϻ�)',
'�Ⱦ�õ ü���ü� ǲ�� �����(���Ͽ� �Ϻ�)',
'���α�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S190522144836251426',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=SVC_IMG_FILE_241687',
'126.86937274726102',
'37.49493348712842',
'����',
'02-860-2023',
'08:00',
'22:00'
);INSERT INTO GROUND VALUES (
'S211202164423368008',
'2022�� �߶���������� ǲ����(��÷��)',
'�߶��� ������� ǲ����',
'������',
'https://mblogthumb-phinf.pstatic.net/MjAxOTEwMDRfNjAg/MDAxNTcwMTQyODAzMDcx.2xOkzug_Tbrx70LlRT5CA4HzNZT4gBe6DjoAThLkTL0g.YzgmuvNoQAq3YAX_tRDOVrJffDO2g-Yhp2uaMhK3vXcg.JPEG.jbg1925/20190827_143347.jpg?type=w800',
'https://mblogthumb-phinf.pstatic.net/MjAxOTEwMDRfNjAg/MDAxNTcwMTQyODAzMDcx.2xOkzug_Tbrx70LlRT5CA4HzNZT4gBe6DjoAThLkTL0g.YzgmuvNoQAq3YAX_tRDOVrJffDO2g-Yhp2uaMhK3vXcg.JPEG.jbg1925/20190827_143347.jpg?type=w800',
'127.0595',
'37.56057',
'����',
'02-2211-2568',
'07:00',
'19:00'
);INSERT INTO GROUND VALUES (
'S220124150140807638',
'2�� ������ȣ������ ǲ���� �뿩 (�����ְ�) 1��25�� ����2�� ����',
'������ ȣ������ ǲ����',
'��õ��',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220124150140807638',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=16430041951081WXG1X0XU5KGT5RBI66IBPASA',
'126.83021',
'37.52707',
'����',
'02-2604-3004',
'06:00',
'18:00'
);INSERT INTO GROUND VALUES (
'S211230153319217708',
'2022�� ������ ǲ�챸��(�����ְ�)',
'���� ������ ����� ǲ�챸��',
'������',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S211230153319217708',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1640846465231XH8QBWOTDUV88YDKVQSQ71WS5',
'126.89900366993466',
'37.57254029207188',
'����',
'02-2128-2966',
'08:00',
'18:00'
);INSERT INTO GROUND VALUES (
'S220221131954299297',
'[�����ְ�] 2022�� ��ô��ī�̵� ǲ�챸��(����) (3��)',
'��ô ��ī�̵� ǲ�챸��',
'���α�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220221131954299297',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645417264413SQHA09MPTB5J09P0X8NFIWFY5',
'126.8669',
'37.49683',
'����',
'02-2128-2352',
'10:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220112143538849507',
'ǲ�� / ��� / 22�� 3�� 1~31�� / ���� 07:00~18:00 (������)',
'��� ����� ü������',
'���ʱ�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220223155039287833',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645599093165CN8N29HRU3MHA532A8SLBKJTQ',
'126.9924890287',
'37.4730044433',
'����',
'02-2155-6211',
'07:00',
'15:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902590',
'ǲ�� / ���� / 22�� (02.02.~02.28.)/ 08:00~18:00',
'���� ���տ��',
'���ʱ�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220126091019902590',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=16431559244538MJH3181BLN3MX4ZCXR516GSB',
'126.9942640531',
'37.5005393518',
'����',
'02-2155-6214',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220112143538849507',
'ǲ�� / ��� / 22�� 3�� 1~31�� / ���� 07:00~18:00 (������)',
'��� ����� ü������',
'���ʱ�',
'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S220223155039287833',
'https://yeyak.seoul.go.kr/web/common/file/FileDown.do?file_id=1645599093165CN8N29HRU3MHA532A8SLBKJTQ',
'126.9924890287',
'37.4730044433',
'����',
'02-2155-6211',
'07:00',
'15:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902595',
'ǲ�� / ���� / 22�� (02.02.~02.28.)/ 08:00~18:00',
'�躴�� �౸Ŭ�� ǲ���� ������(�ǳ�)',
'������',
'https://modo-phinf.pstatic.net/20191023_23/1571814968902nqLC6_JPEG/mosate1IjY.jpeg?type=w1100',
'https://modo-phinf.pstatic.net/20191023_23/1571814968902nqLC6_JPEG/mosate1IjY.jpeg?type=w1100',
'126.7655695',
'37.4377735',
'����',
'1644-7552',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902593',
'ǲ�� / ���� / 22�� (02.02.~02.28.)/ 08:00~18:00',
'KSU �ǳ� ǲ����',
'��õ��',
'https://cdn.discoverynews.kr/news/photo/201809/50386_2242_4617.jpg',
'https://cdn.discoverynews.kr/news/photo/201809/50386_2242_4617.jpg',
'126.7655697',
'37.4376087',
'����',
'',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902598',
'ǲ�� / ���� / 22�� (02.02.~02.28.)/ 08:00~18:00',
'����� SMC ǲ��PARK �ǳ�����',
'������',
'http://www.futsalmania.co.kr/shop/data/goods/1542367233418l9.jpg',
'http://www.futsalmania.co.kr/shop/data/goods/1542367233418l9.jpg',
'126.7655673',
'37.4379882',
'����',
'',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902628',
'ǲ�� / ���� / 22�� (02.02.~02.28.)/ 08:00~18:00',
'�ֻ�� FC ǲ���� ������(�ǳ�)',
'���ı�',
'https://mblogthumb-phinf.pstatic.net/MjAxOTA4MDhfMTE4/MDAxNTY1MjU5NzA0NzY4.AnQksY5yeP9c5DN96_S9Q3tevtbaCt_lqzy3RqwwAuEg._lTUqXvNmTn9FPOL0fmfh6BuOhE9fDIJX3wiRMjnLj4g.JPEG.zuckcorp/2.JPG?type=w2',
'https://mblogthumb-phinf.pstatic.net/MjAxOTA4MDhfMTE4/MDAxNTY1MjU5NzA0NzY4.AnQksY5yeP9c5DN96_S9Q3tevtbaCt_lqzy3RqwwAuEg._lTUqXvNmTn9FPOL0fmfh6BuOhE9fDIJX3wiRMjnLj4g.JPEG.zuckcorp/2.JPG?type=w2',
'127.0902701',
'37.5070416',
'����',
'',
'08:00',
'18:00'
);
INSERT INTO GROUND VALUES (
'S220126091019902720',
'ǲ�� / ���� / 22�� (02.02.~02.28.)/ 08:00~18:00',
'�ϳ� �ѻ�� �ǳ�ǲ����',
'�ϳ���',
'https://plab-football.s3.amazonaws.com/media/hn_hsr_coner.jpg',
'https://plab-football.s3.amazonaws.com/media/hn_hsr_coner.jpg',
'127.158339',
'37.5386154',
'����',
'',
'08:00',
'18:00'
);