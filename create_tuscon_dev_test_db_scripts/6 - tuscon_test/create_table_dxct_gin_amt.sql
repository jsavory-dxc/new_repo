-- Table: tuscon_test.dxct_gin_amt

-- DROP TABLE tuscon_test.dxct_gin_amt;

CREATE TABLE tuscon_test.dxct_gin_amt
(
	dxct_gin_amt_id   integer NOT NULL,
	dxct_gin_amt_type character varying(20) COLLATE pg_catalog."default",
	dxct_gin_amt_adt  date,
	dxct_gin_amt_aown character varying(30) COLLATE pg_catalog."default",
	dxct_gin_amt_ast  character varying(20) COLLATE pg_catalog."default",
	dxct_gin_amt_desc character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_gin_amt
    OWNER to tuscon;