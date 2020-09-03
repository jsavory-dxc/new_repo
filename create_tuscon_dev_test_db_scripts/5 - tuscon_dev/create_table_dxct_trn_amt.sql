-- Table: tuscon_dev.dxct_trn_amt

-- DROP TABLE tuscon_dev.dxct_trn_amt;

CREATE TABLE tuscon_dev.dxct_trn_amt
(
	dxct_trn_amt_id     integer NOT NULL,
	dxct_trn_amt_adt    date,
	dxct_trn_amt_acb    character varying(30) COLLATE pg_catalog."default",
	dxct_trn_amt_ast    character varying(20) COLLATE pg_catalog."default",
	dxct_trn_amt_nadt   date,
	dxct_trn_amt_adesc  character varying(100) COLLATE pg_catalog."default",
	dxct_trn_amt_rga    character varying(30) COLLATE pg_catalog."default",
	dxct_trn_amt_tr     character varying(10) COLLATE pg_catalog."default",
	dxct_trn_amt_tdt    date,
	dxct_trn_amt_stoab  character varying(30) COLLATE pg_catalog."default",
	dxct_trn_amt_stoadt date,
	dxct_trn_amt_stourn integer NOT NULL UNIQUE,
	dxct_trn_amt_sdesc  character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_dev.dxct_trn_amt
    OWNER to tuscon;