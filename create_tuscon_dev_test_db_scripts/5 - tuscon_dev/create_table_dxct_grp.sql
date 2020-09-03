-- Table: tuscon_dev.dxct_grp

-- DROP TABLE tuscon_dev.dxct_grp;

CREATE TABLE tuscon_dev.dxct_grp
(
    dxct_grp_id serial NOT NULL,
    dxct_grp_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    dxct_grp_perm character varying(50) COLLATE pg_catalog."default" DEFAULT '[1(1),1(1)]'::character varying,
    dxct_grp_desc character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT dxct_grp_pkey PRIMARY KEY (dxct_grp_id, dxct_grp_name)
)

TABLESPACE pg_default;

ALTER TABLE tuscon_dev.dxct_grp
    OWNER to tuscon;