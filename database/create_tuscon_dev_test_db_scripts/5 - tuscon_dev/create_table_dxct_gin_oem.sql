-- Table: tuscon_dev.dxct_gin_oem

-- DROP TABLE tuscon_dev.dxct_gin_oem;

CREATE TABLE tuscon_dev.dxct_gin_oem
(
	dxct_gin_oem_id   integer NOT NULL,
	dxct_gin_oem_dt   date,
	dxct_gin_oem_ref  character varying(30) COLLATE pg_catalog."default",
	dxct_gin_oem_desc character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_dev.dxct_gin_oem
    OWNER to tuscon;
