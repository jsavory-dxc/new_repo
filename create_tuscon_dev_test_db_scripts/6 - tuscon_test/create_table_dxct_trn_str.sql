-- Table: tuscon_test.dxct_trn_str

-- DROP TABLE tuscon_test.dxct_trn_str;

CREATE TABLE tuscon_test.dxct_trn_str
(
	dxct_trn_str_id   integer NOT NULL,
	dxct_trn_str_rby  character varying(30) COLLATE pg_catalog."default",
	dxct_trn_str_dt   date,
	dxct_trn_str_tln  integer,
	dxct_trn_str_snum integer,
	dxct_trn_str_sloc character varying(30) COLLATE pg_catalog."default",
	dxct_trn_str_desc character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_trn_str
    OWNER to tuscon;