-- Table: tuscon_dev.dxct_gin_str

-- DROP TABLE tuscon_dev.dxct_gin_str;

CREATE TABLE tuscon_dev.dxct_gin_str
(
	dxct_gin_str_id    integer NOT NULL,
	dxct_gin_str_rby   character varying(30) COLLATE pg_catalog."default",
	dxct_gin_str_dt    date,
	dxct_gin_str_crn   character varying(50) COLLATE pg_catalog."default",
	dxct_gin_str_crr   character varying(50) COLLATE pg_catalog."default",
	dxct_gin_str_adt   date,
	dxct_gin_str_aid   integer,
	dxct_gin_str_asn   integer,
	dxct_gin_str_asl   character varying(30) COLLATE pg_catalog."default",
	dxct_gin_str_adesc character varying(100) COLLATE pg_catalog."default"
)
TABLESPACE pg_default;

ALTER TABLE tuscon_dev.dxct_gin_str
    OWNER to tuscon;