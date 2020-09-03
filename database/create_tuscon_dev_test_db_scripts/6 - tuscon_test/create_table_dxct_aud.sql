-- Table: tuscon_test.dxct_aud

-- DROP TABLE tuscon_test.dxct_aud;

CREATE TABLE tuscon_test.dxct_aud
(
    dxct_aud_id serial NOT NULL,
    dxct_aud_uid integer NOT NULL,
    dxct_aud_ts timestamp with time zone NOT NULL,
    dxct_aud_action character varying(1000) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_aud
    OWNER to tuscon;