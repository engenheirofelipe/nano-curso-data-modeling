-- Gerado por Oracle SQL Developer Data Modeler 24.3.0.240.1210
--   em:        2024-10-31 15:51:42 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE dim_produto CASCADE CONSTRAINTS;

DROP TABLE dim_tempo CASCADE CONSTRAINTS;

DROP TABLE fato_venda_produto CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dim_produto (
    sk_produto    NUMBER NOT NULL,
    nm_produto    VARCHAR2(90) NOT NULL,
    categ_produto VARCHAR2(95) NOT NULL,
    nm_embalagem  VARCHAR2(60) NOT NULL
);

ALTER TABLE dim_produto ADD CONSTRAINT dim_produto_pk PRIMARY KEY ( sk_produto );

CREATE TABLE dim_tempo (
    sk_tempo   NUMBER NOT NULL,
    nr_dia     NUMBER(2) NOT NULL,
    nr_mes     NUMBER(2) NOT NULL,
    nr_ano     NUMBER(4) NOT NULL,
    fl_feriado CHAR(3) NOT NULL
);

COMMENT ON COLUMN dim_tempo.nr_dia IS
    'Esse atributo receberá o dia em que reecbeu a venda do produto.';

ALTER TABLE dim_tempo ADD CONSTRAINT dim_tempo_pk PRIMARY KEY ( sk_tempo );

CREATE TABLE fato_venda_produto (
    vt_venda       NUMBER(10, 2) NOT NULL,
    qt_total_venda NUMBER(10, 4) NOT NULL,
    sk_tempo       NUMBER NOT NULL,
    sk_produto     NUMBER NOT NULL
);

ALTER TABLE fato_venda_produto ADD CONSTRAINT fato_venda_produto_pk PRIMARY KEY ( sk_tempo,
                                                                                  sk_produto );

ALTER TABLE fato_venda_produto
    ADD CONSTRAINT fk_produto_venda_produto FOREIGN KEY ( sk_produto )
        REFERENCES dim_produto ( sk_produto );

ALTER TABLE fato_venda_produto
    ADD CONSTRAINT fk_tempo_venda_produto FOREIGN KEY ( sk_tempo )
        REFERENCES dim_tempo ( sk_tempo );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
