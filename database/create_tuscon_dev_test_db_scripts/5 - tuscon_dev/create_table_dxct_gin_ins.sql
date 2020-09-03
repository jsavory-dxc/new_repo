-- Table: tuscon_dev.dxct_gin_ins

-- DROP TABLE tuscon_dev.dxct_gin_ins;

CREATE TABLE tuscon_dev.dxct_gin_ins
(
	dxct_gin_ins_id    integer NOT NULL,
	dxct_gin_ins_q     integer,
	dxct_gin_ins_cstn  character varying(10) COLLATE pg_catalog."default",
	dxct_gin_ins_ptb   character varying(30) COLLATE pg_catalog."default",
	dxct_gin_ins_ptd   date,
	dxct_gin_ins_by    character varying(30) COLLATE pg_catalog."default",
	dxct_gin_ins_dt    date,
	dxct_gin_ins_rloc  character varying(30) COLLATE pg_catalog."default",
	dxct_gin_ins_mac   character varying(30) COLLATE pg_catalog."default",
	dxct_gin_ins_ip    character varying(16) COLLATE pg_catalog."default",
	dxct_gin_ins_desc  character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE tuscon_dev.dxct_gin_ins
    OWNER to tuscon;
