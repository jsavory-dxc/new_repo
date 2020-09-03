-- Table: tuscon_test.dxct_gin_hws

-- DROP TABLE tuscon_test.dxct_gin_hws;

CREATE TABLE tuscon_test.dxct_gin_hws
(
	dxct_gin_hws_id    integer NOT NULL,
	dxct_gin_hws_pown  character varying(30) COLLATE pg_catalog."default",
	dxct_gin_hws_pname character varying(30) COLLATE pg_catalog."default",
	dxct_gin_hws_term  character varying(50) COLLATE pg_catalog."default",
	dxct_gin_hws_wdt   date,
	dxct_gin_hws_desc  character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_gin_hws
    OWNER to tuscon;
