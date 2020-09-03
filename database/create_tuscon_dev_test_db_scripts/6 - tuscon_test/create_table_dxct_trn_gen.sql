-- Table: tuscon_test.dxct_trn_gen

-- DROP TABLE tuscon_test.dxct_trn_gen;

CREATE TABLE tuscon_test.dxct_trn_gen
(
	dxct_trn_gen_id   integer NOT NULL,
	dxct_trn_gen_desc character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_trn_gen
    OWNER to tuscon;