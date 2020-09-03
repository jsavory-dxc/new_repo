-- Table: tuscon_test.dxct_trn_ast

-- DROP TABLE tuscon_test.dxct_trn_ast;

CREATE TABLE tuscon_test.dxct_trn_ast
(
	dxct_trn_ast_crn   integer NOT NULL,
	dxct_trn_ast_gin   integer NOT NULL,
	dxct_trn_ast_id    integer NOT NULL,
	dxct_trn_ast_make  character varying(100) COLLATE pg_catalog."default",
	dxct_trn_ast_own   character varying(30) COLLATE pg_catalog."default",
	dxct_trn_ast_uid   character varying(10) COLLATE pg_catalog."default" UNIQUE,
	dxct_trn_ast_atype character varying(10) COLLATE pg_catalog."default",
	dxct_trn_ast_desc  character varying(100) COLLATE pg_catalog."default",
	CONSTRAINT dxct_trn_ast_pkey PRIMARY KEY (dxct_trn_ast_crn, dxct_trn_ast_gin, dxct_trn_ast_id)
)

TABLESPACE pg_default;

ALTER TABLE tuscon_test.dxct_trn_ast
    OWNER to tuscon;