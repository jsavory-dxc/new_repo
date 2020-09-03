-- Table: tuscon_test.dxct_gin_acq

-- DROP TABLE tuscon_test.dxct_gin_acq;

CREATE TABLE tuscon_test.dxct_gin_acq
(
    dxct_gin_acq_rnum character varying(15) COLLATE pg_catalog."default" NOT NULL,
    dxct_gin_acq_pnum character varying(15) COLLATE pg_catalog."default" NOT NULL,
    dxct_gin_acq_supp character varying(25) COLLATE pg_catalog."default",
    dxct_gin_acq_make character varying(100) COLLATE pg_catalog."default",
    dxct_gin_acq_lid bigint NOT NULL,
    dxct_gin_acq_tot integer,
    dxct_gin_acq_due integer,
    dxct_gin_acq_del integer,
    dxct_gin_acq_prj character varying(100) COLLATE pg_catalog."default",
    dxct_gin_acq_cterm character varying(100) COLLATE pg_catalog."default",
    dxct_gin_acq_sterm character varying(100) COLLATE pg_catalog."default",
    dxct_gin_acq_wedt date,
    dxct_gin_acq_desc character varying(500) COLLATE pg_catalog."default",
    dxct_gin_acq_id serial NOT NULL,
    CONSTRAINT dxct_gin_acq_pkey PRIMARY KEY (dxct_gin_acq_lid, dxct_gin_acq_rnum)
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_gin_acq
    OWNER to tuscon;