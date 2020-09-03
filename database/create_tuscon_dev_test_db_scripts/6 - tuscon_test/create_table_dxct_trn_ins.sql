-- Table: tuscon_test.dxct_trn_ins

-- DROP TABLE tuscon_test.dxct_trn_ins;

CREATE TABLE tuscon_test.dxct_trn_ins
(
	dxct_trn_ins_id   integer NOT NULL,
	dxct_trn_ins_q    integer,
	dxct_trn_ins_cstn character varying(10) COLLATE pg_catalog."default",
	dxct_trn_ins_ptb  character varying(30) COLLATE pg_catalog."default",
	dxct_trn_ins_ptd  date,
	dxct_trn_ins_by   character varying(30) COLLATE pg_catalog."default",
	dxct_trn_ins_dt   date,
	dxct_trn_ins_rloc character varying(30) COLLATE pg_catalog."default",
	dxct_trn_ins_mac  character varying(30) COLLATE pg_catalog."default",
	dxct_trn_ins_ip   character varying(16) COLLATE pg_catalog."default",
	dxct_trn_ins_desc character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_trn_ins
    OWNER to tuscon;