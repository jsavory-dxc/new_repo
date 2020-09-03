-- Table: tuscon_test.dxct_gin_ctl

-- DROP TABLE tuscon_test.dxct_gin_ctl;

CREATE TABLE tuscon_test.dxct_gin_ctl
(
	dxct_gin_ctl_id   integer NOT NULL,
	dxct_gin_ctl_term character varying(30) COLLATE pg_catalog."default",
	dxct_gin_ctl_g    character varying(10) COLLATE pg_catalog."default",
	dxct_gin_ctl_desc character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_gin_ctl
    OWNER to tuscon;