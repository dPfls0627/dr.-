CREATE TABLE MEMBERS(
MID NVARCHAR2(20) CONSTRAINT PK_MEMBERS PRIMARY KEY,
MPASSWORD NVARCHAR2(20), 
MNAME NVARCHAR2(20) ,
MPHONE NVARCHAR2(20) ,
MEMAIL NVARCHAR2(20) ,
MBIRTH DATE,
POSTCODE NVARCHAR2(20) ,
ADDRESS  NVARCHAR2(20) ,
DETAILADDRESS  NVARCHAR2(20),
EXTRAADDRESS NVARCHAR2(20),  
PROFILENAME  NVARCHAR2(50),

KAKAOID NVARCHAR2(20) ,
NAVERID NVARCHAR2(20) 
);

DROP TABLE BOARD;
CREATE TABLE BOARD(
BNUMBER NUMBER CONSTRAINT PK_BOARD PRIMARY KEY,
BWRITER NVARCHAR2(20),
BTITLE NVARCHAR2(50),
BCONTENTS NVARCHAR2(2000),
BDATE DATE,
BHITS NUMBER,
BFILENAME NVARCHAR2(50)
);

DROP TABLE COMMENTTABLE;
CREATE TABLE COMMENTTABLE(
CNUMBER NUMBER CONSTRAINT PK_COMMENT PRIMARY KEY,
CBNUMBER NVARCHAR2(20),
CWRITER NVARCHAR2(50),
CCONTENTS NVARCHAR2(2000)
);

DROP TABLE NTBOARD;
CREATE TABLE NTBOARD(
NTBNUMBER NUMBER CONSTRAINT PK_NTBOARD PRIMARY KEY,
BWRITER NVARCHAR2(20),
BTITLE NVARCHAR2(50),
BCONTENTS NVARCHAR2(2000),
BDATE DATE,
BHITS NUMBER
);
