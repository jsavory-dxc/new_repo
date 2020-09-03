-- Table: tuscon_test.dxct_gin_gen

-- DROP TABLE tuscon_test.dxct_gin_gen;

CREATE TABLE tuscon_test.dxct_gin_gen
(
	dxct_gin_gen_id   integer NOT NULL,
	dxct_gin_gen_desc character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_gin_gen
    OWNER to tuscon;