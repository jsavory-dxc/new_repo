-----------Author: Mohan Poojari
-----------Sr. Professional Middleware and Database Engineer
==========================================================================================
-------------------------------------ROLE/DATABASE/SCHEMA -------------------------------
==========================================================================================
CREATE ROLE tucson_dev WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md5310d040ea2661fd9c32db8bbe00d6821'; //<< this is a random password (change this)


CREATE DATABASE "TUCSON_DEV"
    WITH 
    OWNER = dxct_dev
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United Kingdom.1252'
    LC_CTYPE = 'English_United Kingdom.1252'
    CONNECTION LIMIT = -1;

CREATE SCHEMA tucson_dev
    AUTHORIZATION tucson_dev;

==========================================================================================
-------------------------------------USERS/GROUPS Objects -------------------------------
==========================================================================================					



CREATE SEQUENCE tucson_dev.dxct_grp_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_grp_id_seq
    OWNER TO tucson_dev;

CREATE TABLE tucson_dev.dxct_grp
(
    dxct_grp_id INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_grp_id_seq') NOT NULL,
    dxct_grp_name Varchar(50)	Not Null,
    dxct_grp_desc Varchar(100) Not Null,
    CONSTRAINT dxct_grp_pkey PRIMARY KEY (dxct_grp_id, dxct_grp_name)
)

ALTER TABLE tucson_dev.dxct_grp
    OWNER TO tucson_dev;

------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.dxct_org_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_org_id_seq
    OWNER TO tucson_dev;

CREATE TABLE tucson_dev.DXCT_ORG
(
DXCT_ORG_ID	INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_org_id_seq') NOT NULL,
DXCT_ORG_NAME	Varchar(50)	Not Null,
DXCT_ORG_DESC	Varchar(100),
CONSTRAINT dxct_org_pkey PRIMARY KEY (DXCT_ORG_ID, DXCT_ORG_NAME)
)


ALTER TABLE tucson_dev.DXCT_ORG
    OWNER TO tucson_dev;

------------------------------------------------------------------------------
CREATE SEQUENCE tucson_dev.dxct_aud_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_aud_id_seq
    OWNER TO tucson_dev;

CREATE TABLE tucson_dev.DXCT_AUD
(
DXCT_AUD_ID	INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_org_id_seq') NOT NULL,
DXCT_AUD_UID	INTEGER	not null,
dxct_aud_ts timestamp with time zone NOT NULL,
DXCT_AUD_ACTION	Varchar(1000)	Not Null
)



ALTER TABLE tucson_dev.dxct_aud
    OWNER TO tucson_dev;

------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.dxct_usr_type_id_seq
    INCREMENT 1
    START 1;
	
ALTER SEQUENCE tucson_dev.dxct_usr_type_id_seq
    OWNER TO tucson_dev;
	
CREATE TABLE tucson_dev.dxct_usr_type
(
    dxct_usr_type_id INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_usr_type_id_seq') NOT NULL,
    dxct_usr_type_name Varchar(50)	Not Null,
    dxct_usr_type_desc Varchar(100) Not Null,
    CONSTRAINT dxct_usr_type_pkey PRIMARY KEY (dxct_usr_type_id, dxct_usr_type_name)
)

ALTER TABLE tucson_dev.dxct_usr_type
    OWNER TO tucson_dev;
	
------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.dxct_rack_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_rack_id_seq
    OWNER TO tucson_dev;
	
CREATE TABLE tucson_dev.dxct_rack
(
    dxct_rack_id INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_rack_id_seq') NOT NULL,
    dxct_rack_name Varchar(50)	Not Null,
    dxct_rack_desc Varchar(100) Not Null,
    CONSTRAINT dxct_rack_pkey PRIMARY KEY (dxct_rack_id, dxct_rack_name)
)

ALTER TABLE tucson_dev.dxct_rack
    OWNER TO tucson_dev;
------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.dxct_usr_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_usr_id_seq
    OWNER TO tucson_dev;


CREATE TABLE tucson_dev.dxct_usr
(
    dxct_usr_id integer NOT NULL DEFAULT nextval('tucson_dev.dxct_usr_id_seq'),
    dxct_usr_name varchar(20)  NOT NULL,
    dxct_usr_fname varchar(20) NOT NULL,
    dxct_usr_lname varchar(20) NOT NULL,
    dxct_usr_mname varchar(20),
    dxct_usr_pwd varchar(500),
    dxct_usr_type Numeric(1) NOT NULL,
    dxct_usr_gid Numeric(1) NOT NULL,
    dxct_usr_oid Numeric(1) NOT NULL,
    dxct_usr_email varchar(100) NOT NULL,
    dxct_usr_state NUMERIC(1) NOT NULL,
    dxct_usr_desc varchar(500),
    dxct_usr_pwd_req Numeric(1) NOT NULL,
    dxct_usr_last_pwd_reset DATE,
    dxct_usr_upload_acl NUMERIC(1) NOT NULL,
    CONSTRAINT dxct_usr_pkey PRIMARY KEY (dxct_usr_name, dxct_usr_email)
)


ALTER TABLE tucson_dev.dxct_usr
    OWNER to tucson_dev;
------------------------------------------------------------------------------

DROP SEQUENCE TUCSON_DEV.dxct_rack_id_seq;

CREATE SEQUENCE TUCSON_DEV.dxct_rack_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE TUCSON_DEV.dxct_rack_id_seq
    OWNER TO TUCSON_DEV;
	
	
DROP TABLE TUCSON_DEV.DXCT_RACK;

CREATE TABLE TUCSON_DEV.DXCT_RACK
(
    dxct_rack_id integer NOT NULL DEFAULT nextval('TUCSON_DEV.dxct_rack_id_seq'),
    dxct_rack_name varchar(30) NOT NULL,
    dxct_rack_desc varchar(100) NOT NULL,
    CONSTRAINT dxct_rack_pkey PRIMARY KEY (dxct_rack_id, dxct_rack_name)
)

ALTER TABLE TUCSON_DEV.DXCT_RACK ADD CONSTRAINT DXCT_RACK_UC1 UNIQUE (DXCT_RACK_ID);

ALTER TABLE TUCSON_DEV.DXCT_RACK
    OWNER to TUCSON_DEV;	

 
==========================================================================================
-------------------------------------DXCT Goods-IN Objects -------------------------------
==========================================================================================					

CREATE SEQUENCE tucson_dev.dxct_gin_acq_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_gin_acq_id_seq
    OWNER TO tucson_dev;

								
CREATE TABLE tucson_dev.dxct_gin_acq
(
    dxct_gin_acq_rnum varchar(6) NOT NULL,
    dxct_gin_acq_pnum varchar(10) NOT NULL,
    dxct_gin_acq_lid numeric(3) NOT NULL,
    dxct_gin_acq_supp varchar(10),
    dxct_gin_acq_make varchar(200),
    dxct_gin_acq_tot numeric(5),
    dxct_gin_acq_prj_name varchar(30),
    dxct_gin_acq_prj_own varchar(30),
    dxct_gin_acq_cterm varchar(30),
    dxct_gin_acq_sterm varchar(30),
    dxct_gin_acq_wedt DATE,
    dxct_gin_acq_A_OR_R numeric(1),
    dxct_gin_acq_COMM varchar(200),
    dxct_gin_acq_id INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_gin_acq_id_seq') NOT NULL,
    CONSTRAINT dxct_gin_acq_pkey PRIMARY KEY (dxct_gin_acq_lid, dxct_gin_acq_rnum)
)


ALTER TABLE tucson_dev.DXCT_GIN_ACQ
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.dxct_gin_str_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_gin_str_id_seq
    OWNER TO tucson_dev;

								
CREATE TABLE tucson_dev.dxct_gin_str
(
    DXCT_GIN_STR_rnum varchar(6) NOT NULL,
    DXCT_GIN_STR_pnum varchar(10) NOT NULL,
    DXCT_GIN_STR_lid numeric(3) NOT NULL,
	DXCT_GIN_STR_GDRBY varchar(30),
	DXCT_GIN_STR_DELDT DATE,
	DXCT_GIN_STR_CRNAME varchar(30),
	DXCT_GIN_STR_CDNREF varchar(20),
	DXCT_GIN_STR_PODDT DATE,
	DXCT_GIN_STR_QTY_OUT NUMERIC(4),
	DXCT_GIN_STR_QTY_DEL NUMERIC(4),
	DXCT_GIN_STR_GRNREF varchar(20),
	DXCT_GIN_STR_DAID varchar(30),
	DXCT_GIN_STR_SNUM varchar(50),
	DXCT_GIN_STR_SLOC varchar(40),
	DXCT_GIN_STR_COMM varchar(200),
	DXCT_GIN_STR_A_OR_R NUMERIC(1)  NOT NULL DEFAULT -1,
	DXCT_GIN_STR_ID INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_gin_str_id_seq') NOT NULL,
    CONSTRAINT dxct_gin_str_pkey PRIMARY KEY (DXCT_GIN_STR_rnum, DXCT_GIN_STR_pnum,DXCT_GIN_STR_lid)
)


ALTER TABLE tucson_dev.DXCT_GIN_STR
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.dxct_gin_str_rej_id_seq
    INCREMENT 1
    START 1;

ALTER SEQUENCE tucson_dev.dxct_gin_str_rej_id_seq
    OWNER TO tucson_dev;

CREATE TABLE tucson_dev.dxct_gin_str_REJ
(
    DXCT_GIN_STR_REJ_rnum varchar(6) NOT NULL,
    DXCT_GIN_STR_REJ_pnum varchar(10) NOT NULL,
    DXCT_GIN_STR_REJ_lid numeric(3)  NOT NULL,
	DXCT_GIN_STR_REJ_GDRBY varchar(30),
	DXCT_GIN_STR_REJ_DELDT DATE,
	DXCT_GIN_STR_REJ_CRNAME varchar(30),
	DXCT_GIN_STR_REJ_CDNREF varchar(20),
	DXCT_GIN_STR_REJ_PODDT DATE,
	DXCT_GIN_STR_REJ_QTY_OUT NUMERIC(4),
	DXCT_GIN_STR_REJ_QTY_DEL NUMERIC(4),
	DXCT_GIN_STR_REJ_GRNREF varchar(20),
	DXCT_GIN_STR_REJ_DAID varchar(30),
	DXCT_GIN_STR_REJ_SNUM varchar(50),
	DXCT_GIN_STR_REJ_SLOC varchar(40),
	DXCT_GIN_STR_REJ_COMM varchar(200),
	DXCT_GIN_STR_REJ_DECBY varchar(30),
	DXCT_GIN_STR_REJ_RSN varchar(30),
	DXCT_GIN_STR_REJ_ACQ_DT DATE,
	DXCT_GIN_STR_REJ_REPL NUMERIC(1),
	DXCT_GIN_STR_REJ_RET_DT DATE,
	DXCT_GIN_STR_REJ_COUR_NAME varchar(30),
	DXCT_GIN_STR_REJ_SDD_REF varchar(20),
	DXCT_GIN_STR_REJ_COMM2 varchar(200),
	DXCT_GIN_STR_REJ_ID INTEGER DEFAULT NEXTVAL('tucson_dev.dxct_gin_str_rej_id_seq') NOT NULL,
    CONSTRAINT dxct_gin_str_rej_pkey PRIMARY KEY (DXCT_GIN_STR_REJ_rnum, DXCT_GIN_STR_REJ_pnum,DXCT_GIN_STR_REJ_lid)
)

ALTER TABLE tucson_dev.DXCT_GIN_STR_REJ
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------


CREATE SEQUENCE tucson_dev.DXCT_GIN_INSTALL_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_GIN_INSTALL_id_seq
    OWNER TO tucson_dev;

CREATE TABLE tucson_dev.DXCT_GIN_INSTALL
(
    DXCT_GIN_INSTALL_rnum varchar(6) NOT NULL,
    DXCT_GIN_INSTALL_pnum varchar(10) NOT NULL,
    DXCT_GIN_INSTALL_lid numeric(3) NOT NULL,
	DXCT_GIN_INSTALL_IS_I numeric(1),
	DXCT_GIN_INSTALL_CSTN varchar(20),
	DXCT_GIN_INSTALL_PAT_T_BY varchar(30),
	DXCT_GIN_INSTALL_PAT_T_DT DATE,
	DXCT_GIN_INSTALL_BY varchar(30),
	DXCT_GIN_INSTALL_DT DATE,
	DXCT_GIN_INSTALL_RACK_LOC varchar(30),
	DXCT_GIN_INSTALL_IP varchar(15),
	DXCT_GIN_INSTALL_COMM varchar(200),
	DXCT_GIN_INSTALL_ID INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_GIN_INSTALL_id_seq') NOT NULL,
    CONSTRAINT dxct_gin_install_pkey PRIMARY KEY (DXCT_GIN_INSTALL_rnum, DXCT_GIN_INSTALL_pnum,DXCT_GIN_INSTALL_lid)
)

ALTER TABLE tucson_dev.DXCT_GIN_INSTALL
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------


CREATE SEQUENCE tucson_dev.DXCT_GIN_OEM_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_GIN_OEM_id_seq
    OWNER TO tucson_dev;
    
CREATE TABLE tucson_dev.DXCT_GIN_OEM
(
    DXCT_GIN_OEM_rnum varchar(6) NOT NULL,
    DXCT_GIN_OEM_pnum varchar(10) NOT NULL,
    DXCT_GIN_OEM_lid numeric(3) NOT NULL,
	DXCT_GIN_OEM_REG_DT DATE,
	DXCT_GIN_OEM_REG_BY varchar(30),
	DXCT_GIN_OEM_REG_REF_DET varchar(30),
	DXCT_GIN_OEM_COMM varchar(200),
	DXCT_GIN_OEM_ID INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_GIN_OEM_id_seq') NOT NULL,
    CONSTRAINT dxct_gin_oem_pkey PRIMARY KEY (DXCT_GIN_OEM_rnum, DXCT_GIN_OEM_pnum,DXCT_GIN_OEM_lid)
)


ALTER TABLE tucson_dev.DXCT_GIN_OEM
    OWNER TO tucson_dev;




---------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.DXCT_GIN_SUPP_MAINT_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_GIN_SUPP_MAINT_id_seq
    OWNER TO tucson_dev;
    
CREATE TABLE tucson_dev.DXCT_GIN_SUPP_MAINT
(
    DXCT_GIN_SUPP_MAINT_rnum varchar(6) NOT NULL,
    DXCT_GIN_SUPP_MAINT_pnum varchar(10) NOT NULL,
    DXCT_GIN_SUPP_MAINT_lid numeric(3) NOT NULL,
	DXCT_GIN_SUPP_MAINT_DT DATE,
	DXCT_GIN_SUPP_MAINT_E_TYPE NUMERIC(1),
	DXCT_GIN_SUPP_MAINT_E_DESC varchar(100),
	DXCT_GIN_SUPP_MAINT_OSINC_REF_NUM varchar(30),
	DXCT_GIN_SUPP_MAINT_ACT_BY varchar(30),
	DXCT_GIN_SUPP_MAINT_COMM varchar(200),
	DXCT_GIN_SUPP_MAINT_ID INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_GIN_SUPP_MAINT_id_seq') NOT NULL,
    CONSTRAINT dxct_gin_supp_maint_pkey PRIMARY KEY (DXCT_GIN_SUPP_MAINT_rnum, DXCT_GIN_SUPP_MAINT_pnum,DXCT_GIN_SUPP_MAINT_lid,DXCT_GIN_SUPP_MAINT_ID)
)


ALTER TABLE tucson_dev.DXCT_GIN_SUPP_MAINT
    OWNER TO tucson_dev;


---------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.DXCT_GIN_AST_MGMT_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_GIN_AST_MGMT_id_seq
    OWNER TO tucson_dev;
    
CREATE TABLE tucson_dev.DXCT_GIN_AST_MGMT
(
    DXCT_GIN_AST_MGMT_rnum varchar(6) NOT NULL,
    DXCT_GIN_AST_MGMT_pnum varchar(10) NOT NULL,
    DXCT_GIN_AST_MGMT_lid numeric(3) NOT NULL,
	DXCT_GIN_AST_MGMT_A_TYPE NUMERIC(1),
	DXCT_GIN_AST_MGMT_AUD_DT DATE,
	DXCT_GIN_AST_MGMT_AUD_BY VARCHAR(30),
	DXCT_GIN_AST_MGMT_AUD_STAT VARCHAR(30),
	DXCT_GIN_AST_MGMT_AUD_NDT DATE,
	DXCT_GIN_AST_MGMT_COMM varchar(200),
	DXCT_GIN_AST_MGMT_ID INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_GIN_AST_MGMT_id_seq') NOT NULL,
    CONSTRAINT dxct_gin_ast_mgmt_pkey PRIMARY KEY (DXCT_GIN_AST_MGMT_rnum, DXCT_GIN_AST_MGMT_pnum,DXCT_GIN_AST_MGMT_lid)
)


ALTER TABLE tucson_dev.DXCT_GIN_AST_MGMT
    OWNER TO tucson_dev;



==========================================================================================
---------------------------DXCT Transfers In & Out Objects -------------------------------
==========================================================================================
			

CREATE SEQUENCE tucson_dev.DXCT_TRN_AST_START_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_TRN_AST_START_id_seq
    OWNER TO tucson_dev;

						
								
CREATE TABLE tucson_dev.DXCT_TRN_AST_START
(
    DXCT_TRN_AST_START_GIN varchar(10) NOT NULL,
    DXCT_TRN_AST_START_MAKE varchar(200) NOT NULL,
    DXCT_TRN_AST_START_SNUM varchar(50) NOT NULL,
    DXCT_TRN_AST_START_PRJOWN varchar(30),
    DXCT_TRN_AST_START_PRJNAME varchar(30),
    DXCT_TRN_AST_START_ATYPE varchar(12) DEFAULT 'client asset',
    DXCT_TRN_AST_START_COMM varchar(200),
    DXCT_TRN_AST_START_A_OR_R numeric(1),
    DXCT_TRN_AST_START_id INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_TRN_AST_START_id_seq') NOT NULL,
    CONSTRAINT dxct_trn_ast_START_pkey PRIMARY KEY (DXCT_TRN_AST_START_GIN)
)

ALTER TABLE tucson_dev.DXCT_TRN_AST_START
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------
			

CREATE SEQUENCE tucson_dev.DXCT_TRN_AST_END_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_TRN_AST_END_id_seq
    OWNER TO tucson_dev;
								
CREATE TABLE tucson_dev.DXCT_TRN_AST_END
(
	DXCT_TRN_AST_END_GIN varchar(10) NOT NULL,
    DXCT_TRN_AST_END_AUD_DT DATE,
    DXCT_TRN_AST_END_AUD_BY varchar(30),
    DXCT_TRN_AST_END_AUD_STAT varchar(30),
    DXCT_TRN_AST_END_AUD_NDT DATE,
    DXCT_TRN_AST_END_COMM varchar(200),
    DXCT_TRN_AST_END_RTN_BY varchar(30),
    DXCT_TRN_AST_END_TRN_DT DATE,
    DXCT_TRN_AST_END_id INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_TRN_AST_END_id_seq') NOT NULL,
    CONSTRAINT dxct_trn_ast_END_pkey PRIMARY KEY (DXCT_TRN_AST_END_GIN)
)

ALTER TABLE tucson_dev.DXCT_TRN_AST_END
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------

CREATE SEQUENCE tucson_dev.DXCT_TRN_STR_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_TRN_STR_id_seq
    OWNER TO tucson_dev;

CREATE TABLE tucson_dev.DXCT_TRN_STR
(
    DXCT_TRN_STR_GIN varchar(10) NOT NULL,
    DXCT_TRN_STR_TIN_REC_BY varchar(30),
    DXCT_TRN_STR_TIN_DT DATE,
    DXCT_TRN_STR_G4S_TLNUM varchar(20) ,
    DXCT_TRN_STR_GRN_REFNUM varchar(20),
    DXCT_TRN_STR_LOC varchar(40) ,
    DXCT_TRN_STR_A_OR_R NUMERIC(1) ,
    DXCT_TRN_STR_COMM varchar(200),
    DXCT_TRN_STR_id INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_TRN_STR_id_seq') NOT NULL,
    CONSTRAINT dxct_trn_STR_pkey PRIMARY KEY (DXCT_TRN_STR_GIN)
)

ALTER TABLE tucson_dev.DXCT_TRN_STR
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------


CREATE SEQUENCE tucson_dev.DXCT_TRN_STR_REJ_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_TRN_STR_REJ_id_seq
    OWNER TO tucson_dev;

CREATE TABLE tucson_dev.DXCT_TRN_STR_REJ
(
    DXCT_TRN_STR_REJ_GIN varchar(10) NOT NULL,
    DXCT_TRN_STR_REJ_TIN_REC_BY varchar(30),
    DXCT_TRN_STR_REJ_TIN_DT DATE,
    DXCT_TRN_STR_REJ_G4S_TLNUM varchar(20) ,
    DXCT_TRN_STR_REJ_GRN_REFNUM varchar(20),
    DXCT_TRN_STR_REJ_LOC varchar(40),
    DXCT_TRN_STR_REJ_COMM1 varchar(200),
	DXCT_TRN_STR_REJ_DSN_BY varchar(30),
	DXCT_TRN_STR_REJ_RSN varchar(30),
	DXCT_TRN_STR_REJ_AST_DT DATE,
	DXCT_TRN_STR_REJ_COMM varchar(200),
    DXCT_TRN_STR_REJ_id INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_TRN_STR_REJ_id_seq') NOT NULL,
    CONSTRAINT dxct_trn_STOR_REJ_pkey PRIMARY KEY (DXCT_TRN_STR_REJ_GIN)
)

ALTER TABLE tucson_dev.DXCT_TRN_STR_REJ
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------


CREATE SEQUENCE tucson_dev.DXCT_TRN_INSTALL_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE tucson_dev.DXCT_TRN_INSTALL_id_seq
    OWNER TO tucson_dev;

						
								
CREATE TABLE tucson_dev.DXCT_TRN_INSTALL
(
    DXCT_TRN_INSTALL_GIN varchar(10) NOT NULL,
    DXCT_TRN_INSTALL_IS_I numeric(1),
	DXCT_TRN_INSTALL_CSTN varchar(20),
    DXCT_TRN_INSTALL_PAT_T_BY varchar(30),
	DXCT_TRN_INSTALL_PAT_T_DT DATE,
	DXCT_TRN_INSTALL_BY varchar(30),
	DXCT_TRN_INSTALL_DT DATE,
	DXCT_TRN_INSTALL_RACK_LOC varchar(30),
	DXCT_TRN_INSTALL_IP varchar(15),
	DXCT_TRN_INSTALL_COMM varchar(200),
    DXCT_TRN_INSTALL_id INTEGER DEFAULT NEXTVAL('tucson_dev.DXCT_TRN_INSTALL_id_seq') NOT NULL,
    CONSTRAINT dxct_trn_INSTALL_pkey PRIMARY KEY (DXCT_TRN_INSTALL_GIN)
)

ALTER TABLE tucson_dev.DXCT_TRN_INSTALL
    OWNER TO tucson_dev;

---------------------------------------------------------------------------------


CREATE TABLE tucson_dev.DXCT_SMTP
(
    DXCT_SMTP_NAME varchar(40) NOT NULL,
	DXCT_SMTP_PORT NUMERIC(3) NOT NULL,
    DXCT_SMTP_USER_NAME varchar(25) NOT NULL,
	DXCT_SMTP_USER_PASSWORD varchar(50) NOT NULL,
	DXCT_SMTP_SENDER_NAME varchar(20) NOT NULL,
	DXCT_SMTP_SENDER_ADDR varchar(30) NOT NULL,
	DXCT_ENV varchar(30) NOT NULL
)


ALTER TABLE tucson_dev.DXCT_SMTP
    OWNER TO tucson_dev;
	
	
===============================================
				indexes
===============================================
	
CREATE INDEX DXCT_ORG_IDX1 ON TUCSON_DEV.DXCT_ORG(dxct_org_id);

CREATE INDEX DXCT_GRP_IDX1 ON TUCSON_DEV.DXCT_GRP(dxct_grp_id);

CREATE INDEX DXCT_USR_IDX1 ON TUCSON_DEV.DXCT_USR(dxct_usr_id);

CREATE INDEX DXCT_AUD_IDX1 ON TUCSON_DEV.DXCT_AUD(dxct_AUD_ID);

CREATE INDEX DXCT_AUD_IDX2 ON TUCSON_DEV.DXCT_AUD(dxct_AUD_ID,dxct_AUD_UID);

CREATE INDEX DXCT_AUD_IDX3 ON TUCSON_DEV.DXCT_AUD(dxct_AUD_ID,dxct_AUD_UID,dxct_AUD_ts);

CREATE INDEX DXCT_AUD_IDX4 ON TUCSON_DEV.DXCT_AUD(dxct_AUD_ts);

CREATE INDEX DXCT_GIN_ACQ_IDX1 ON TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM);

CREATE INDEX DXCT_GIN_ACQ_IDX2 ON TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);

CREATE INDEX DXCT_GIN_ACQ_IDX3 ON TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM, DXCT_GIN_ACQ_PNUM, DXCT_GIN_ACQ_LID);

CREATE INDEX DXCT_GIN_AST_MGMT_IDX1 ON TUCSON_DEV.DXCT_GIN_AST_MGMT (DXCT_GIN_AST_MGMT_RNUM, DXCT_GIN_AST_MGMT_PNUM, DXCT_GIN_AST_MGMT_LID);

CREATE INDEX DXCT_GIN_INSTALL_IDX1 ON TUCSON_DEV.DXCT_GIN_INSTALL (DXCT_GIN_INSTALL_RNUM, DXCT_GIN_INSTALL_PNUM, DXCT_GIN_INSTALL_LID);

CREATE INDEX DXCT_GIN_OEM_IDX1 ON TUCSON_DEV.DXCT_GIN_OEM(DXCT_GIN_OEM_RNUM, DXCT_GIN_OEM_PNUM, DXCT_GIN_OEM_LID);

CREATE INDEX DXCT_GIN_STR_IDX1 ON TUCSON_DEV.DXCT_GIN_STR (DXCT_GIN_STR_RNUM, DXCT_GIN_STR_PNUM, DXCT_GIN_STR_LID);
	
CREATE INDEX DXCT_GIN_STR_REJ_IDX1 ON TUCSON_DEV.DXCT_GIN_STR_REJ (DXCT_GIN_STR_REJ_RNUM, DXCT_GIN_STR_REJ_PNUM, DXCT_GIN_STR_REJ_LID);	

CREATE INDEX DXCT_GIN_SUPP_MAINT_IDX1 ON TUCSON_DEV.DXCT_GIN_SUPP_MAINT (DXCT_GIN_SUPP_MAINT_RNUM, DXCT_GIN_SUPP_MAINT_PNUM, DXCT_GIN_SUPP_MAINT_LID);	

CREATE INDEX DXCT_TRN_STR_IDX1 ON TUCSON_DEV.DXCT_TRN_STR (DXCT_TRN_STR_GIN);
	
CREATE INDEX DXCT_TRN_STR_REJ_IDX1 ON TUCSON_DEV.DXCT_TRN_STR_REJ (DXCT_TRN_STR_REJ_GIN);

CREATE INDEX DXCT_TRN_INSTALL_IDX1 ON TUCSON_DEV.DXCT_TRN_INSTALL (DXCT_TRN_INSTALL_GIN);

CREATE INDEX DXCT_TRN_AST_START_IDX1 ON TUCSON_DEV.DXCT_TRN_AST_START (DXCT_TRN_AST_START_GIN);

CREATE INDEX DXCT_TRN_AST_END_IDX1 ON TUCSON_DEV.DXCT_TRN_AST_END (DXCT_TRN_AST_END_GIN);	

CREATE INDEX DXCT_RACK_IDX1 ON TUCSON_DEV.DXCT_RACK (DXCT_RACK_ID);

=======================================================
	REFERENTIAL INTEGRITY CONSTRAINTS
=======================================================

ALTER TABLE TUCSON_DEV.DXCT_GRP ADD CONSTRAINT DXCT_GRP_UC1 UNIQUE (DXCT_GRP_ID);

ALTER TABLE TUCSON_DEV.DXCT_USR 
ADD CONSTRAINT DXCT_USR_FK1 
FOREIGN KEY (DXCT_USR_GID)
REFERENCES TUCSON_DEV.DXCT_GRP (DXCT_GRP_ID);

ALTER TABLE TUCSON_DEV.DXCT_ORG ADD CONSTRAINT DXCT_ORG_UC1 UNIQUE (DXCT_ORG_ID);

ALTER TABLE TUCSON_DEV.DXCT_USR 
ADD CONSTRAINT DXCT_USR_FK2 
FOREIGN KEY (DXCT_USR_OID)
REFERENCES TUCSON_DEV.DXCT_ORG (DXCT_ORG_ID);

ALTER TABLE TUCSON_DEV.DXCT_USR ADD CONSTRAINT DXCT_USR_UC1 UNIQUE (DXCT_USR_ID);

ALTER TABLE TUCSON_DEV.DXCT_AUD 
ADD CONSTRAINT DXCT_AUD_FK1 
FOREIGN KEY (DXCT_AUD_UID)
REFERENCES TUCSON_DEV.DXCT_USR (DXCT_USR_ID);

ALTER TABLE TUCSON_DEV.DXCT_AUD ADD CONSTRAINT DXCT_AUD_UC1 UNIQUE (DXCT_AUD_ID);

ALTER TABLE TUCSON_DEV.DXCT_USR_TYPE ADD CONSTRAINT DXCT_USR_TYPE_UC1 UNIQUE (DXCT_USR_TYPE_ID);

ALTER TABLE TUCSON_DEV.DXCT_USR 
ADD CONSTRAINT DXCT_USR_FK3 
FOREIGN KEY (DXCT_USR_TYPE)
REFERENCES TUCSON_DEV.DXCT_USR_TYPE (DXCT_USR_TYPE_ID);



ALTER TABLE TUCSON_DEV.DXCT_GIN_ACQ
ADD CONSTRAINT DXCT_GIN_ACQ_UC1 
UNIQUE (DXCT_GIN_ACQ_RNUM,DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);

ALTER TABLE TUCSON_DEV.DXCT_GIN_AST_MGMT
ADD CONSTRAINT DXCT_GIN_AST_MGMT_FK1 
FOREIGN KEY (DXCT_GIN_AST_MGMT_RNUM,DXCT_GIN_AST_MGMT_PNUM,DXCT_GIN_AST_MGMT_LID)
REFERENCES TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM,DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);

ALTER TABLE TUCSON_DEV.DXCT_GIN_INSTALL
ADD CONSTRAINT DXCT_GIN_INSTALL_FK1 
FOREIGN KEY (DXCT_GIN_INSTALL_RNUM,DXCT_GIN_INSTALL_PNUM,DXCT_GIN_INSTALL_LID)
REFERENCES TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM,DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);

ALTER TABLE TUCSON_DEV.DXCT_GIN_OEM
ADD CONSTRAINT DXCT_GIN_OEM_FK1 
FOREIGN KEY (DXCT_GIN_OEM_RNUM,DXCT_GIN_OEM_PNUM,DXCT_GIN_OEM_LID)
REFERENCES TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM,DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);

ALTER TABLE TUCSON_DEV.DXCT_GIN_STR
ADD CONSTRAINT DXCT_GIN_STR_FK1 
FOREIGN KEY (DXCT_GIN_STR_RNUM,DXCT_GIN_STR_PNUM,DXCT_GIN_STR_LID)
REFERENCES TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM,DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);

ALTER TABLE TUCSON_DEV.DXCT_GIN_STR_REJ
ADD CONSTRAINT DXCT_GIN_STR_REJ_FK1 
FOREIGN KEY (DXCT_GIN_STR_REJ_RNUM,DXCT_GIN_STR_REJ_PNUM,DXCT_GIN_STR_REJ_LID)
REFERENCES TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM,DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);

ALTER TABLE TUCSON_DEV.DXCT_GIN_SUPP_MAINT
ADD CONSTRAINT DXCT_GIN_SUPP_MAINT_FK1 
FOREIGN KEY (DXCT_GIN_SUPP_MAINT_RNUM,DXCT_GIN_SUPP_MAINT_PNUM,DXCT_GIN_SUPP_MAINT_LID)
REFERENCES TUCSON_DEV.DXCT_GIN_ACQ (DXCT_GIN_ACQ_RNUM,DXCT_GIN_ACQ_PNUM,DXCT_GIN_ACQ_LID);




ALTER TABLE TUCSON_DEV.DXCT_TRN_AST_START ADD CONSTRAINT DXCT_TRN_AST_START_UC1 UNIQUE (DXCT_TRN_AST_START_GIN);

ALTER TABLE TUCSON_DEV.DXCT_TRN_AST_END 
ADD CONSTRAINT DXCT_TRN_AST_END_FK1 
FOREIGN KEY (DXCT_TRN_AST_END_GIN)
REFERENCES TUCSON_DEV.DXCT_TRN_AST_START (DXCT_TRN_AST_START_GIN);

ALTER TABLE TUCSON_DEV.DXCT_TRN_INSTALL
ADD CONSTRAINT DXCT_TRN_INSTALL_FK1 
FOREIGN KEY (DXCT_TRN_INSTALL_GIN)
REFERENCES TUCSON_DEV.DXCT_TRN_AST_START (DXCT_TRN_AST_START_GIN);

ALTER TABLE TUCSON_DEV.DXCT_TRN_STR
ADD CONSTRAINT DXCT_TRN_STR_FK1 
FOREIGN KEY (DXCT_TRN_STR_GIN)
REFERENCES TUCSON_DEV.DXCT_TRN_AST_START (DXCT_TRN_AST_START_GIN);

ALTER TABLE TUCSON_DEV.DXCT_TRN_STR_REJ
ADD CONSTRAINT DXCT_TRN_STR_REJ_FK1 
FOREIGN KEY (DXCT_TRN_STR_REJ_GIN)
REFERENCES TUCSON_DEV.DXCT_TRN_AST_START (DXCT_TRN_AST_START_GIN);

ALTER TABLE TUCSON_DEV.DXCT_RACK ADD CONSTRAINT DXCT_RACK_UC2 UNIQUE (DXCT_RACK_NAME);

ALTER TABLE TUCSON_DEV.DXCT_TRN_INSTALL
ADD CONSTRAINT DXCT_TRN_INSTALL_FK2 
FOREIGN KEY (DXCT_TRN_INSTALL_RACK_LOC)
REFERENCES TUCSON_DEV.DXCT_RACK (DXCT_RACK_NAME);

ALTER TABLE TUCSON_DEV.DXCT_GIN_INSTALL
ADD CONSTRAINT DXCT_GIN_INSTALL_FK2 
FOREIGN KEY (DXCT_GIN_INSTALL_RACK_LOC)
REFERENCES TUCSON_DEV.DXCT_RACK (DXCT_RACK_NAME);


---------------------


ALTER TABLE tucson_dev.dxct_gin_acq
    ALTER COLUMN dxct_gin_acq_supp TYPE character varying(40);
	

ALTER TABLE tucson_dev.dxct_gin_acq
    ALTER COLUMN dxct_gin_acq_comm TYPE character varying(250);
	
ALTER TABLE tucson_dev.dxct_gin_str
    ALTER COLUMN dxct_gin_str_comm TYPE character varying(250);	
	
ALTER TABLE tucson_dev.dxct_gin_str_rej
    ALTER COLUMN dxct_gin_str_rej_comm TYPE character varying(250);	

ALTER TABLE tucson_dev.dxct_gin_str_rej
    ALTER COLUMN dxct_gin_str_rej_comm2 TYPE character varying(250);	
	
ALTER TABLE tucson_dev.dxct_gin_install
    ALTER COLUMN dxct_gin_install_comm TYPE character varying(250);		

ALTER TABLE tucson_dev.dxct_gin_ast_mgmt
    ALTER COLUMN dxct_gin_ast_mgmt_comm TYPE character varying(250);	

ALTER TABLE tucson_dev.dxct_gin_supp_maint
    ALTER COLUMN dxct_gin_supp_maint_comm TYPE character varying(250);		
	
ALTER TABLE tucson_dev.dxct_gin_oem
    ALTER COLUMN dxct_gin_oem_comm TYPE character varying(250);	
	
	
ALTER TABLE tucson_dev.dxct_trn_ast_start
    ALTER COLUMN dxct_trn_ast_start_comm TYPE character varying(250);	

ALTER TABLE tucson_dev.dxct_trn_ast_end
    ALTER COLUMN dxct_trn_ast_end_comm TYPE character varying(250);	

ALTER TABLE tucson_dev.dxct_trn_install
    ALTER COLUMN dxct_trn_install_comm TYPE character varying(250);	

ALTER TABLE tucson_dev.dxct_trn_str
    ALTER COLUMN dxct_trn_str_comm TYPE character varying(250);	

ALTER TABLE tucson_dev.dxct_trn_str_rej
    ALTER COLUMN dxct_trn_str_rej_comm TYPE character varying(250);		
	
ALTER TABLE tucson_dev.dxct_trn_str_rej
    ALTER COLUMN dxct_trn_str_rej_comm1 TYPE character varying(250);	