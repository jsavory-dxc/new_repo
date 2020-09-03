-- Table: tuscon_test.dxct_org

-- DROP TABLE tuscon_test.dxct_org;

CREATE TABLE tuscon_test.dxct_org
(
    dxct_org_id serial NOT NULL,
    dxct_org_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    dxct_org_desc character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT dxct_org_pkey PRIMARY KEY (dxct_org_id, dxct_org_name)
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_org
    OWNER to tuscon;