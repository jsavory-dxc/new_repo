CREATE TABLE tuscon_test.dxct_usr
(
    dxct_usr_id serial NOT NULL,
    dxct_usr_name character varying(20) NOT NULL,
    dxct_usr_fname character varying(20) NOT NULL,
    dxct_usr_lname character varying(20) NOT NULL,
    dxct_usr_mname character varying(20),
    dxct_usr_pwd character varying(500),
    dxct_usr_type integer NOT NULL,
    dxct_usr_gid integer NOT NULL,
    dxct_usr_oid integer NOT NULL,
    dxct_usr_email character varying(100) NOT NULL,
    dxct_usr_state integer NOT NULL,
    dxct_usr_desc character varying(500) NOT NULL,
    dxct_usr_pwd_req integer NOT NULL,
    dxct_usr_last_pwd_reset date,
    dxct_usr_upload_acl integer NOT NULL,
    CONSTRAINT dxct_usr_pkey PRIMARY KEY (dxct_usr_name, dxct_usr_email)
);

ALTER TABLE tuscon_test.dxct_usr
    OWNER to tuscon;
