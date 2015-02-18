-- Generated by Oracle SQL Developer Data Modeler 4.0.3.853
--   at:        2015-02-17 19:38:28 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE SIM_Person
  (
    person_id         INTEGER NOT NULL ,
    name              VARCHAR2 (255) ,
    ssnum             INTEGER ,
    gender            VARCHAR2 (255) ,
    birth_date        DATE ,
    address           VARCHAR2 (255) ,
    city              VARCHAR2 (255) ,
    state             VARCHAR2 (255) ,
    zip               INTEGER ,
    hire_date         DATE ,
    salary            INTEGER ,
    status            VARCHAR2 (255) ,
    title             VARCHAR2 (255) ,
    rating            VARCHAR2 (255) ,
    bonus             INTEGER ,
    SIM_dept_dept_id  INTEGER ,
    SIM_dept_dept_id2 INTEGER
  ) ;
CREATE UNIQUE INDEX SIM_Person__IDX ON SIM_Person
  (
    SIM_dept_dept_id ASC
  )
  ;
  ALTER TABLE SIM_Person ADD CONSTRAINT SIM_Person_PK PRIMARY KEY ( person_id ) ;

CREATE TABLE SIM_dept
  (
    dept_id              INTEGER NOT NULL ,
    name                 VARCHAR2 (255) ,
    location             VARCHAR2 (255) ,
    SIM_Person_person_id INTEGER
  ) ;
CREATE UNIQUE INDEX SIM_dept__IDX ON SIM_dept
  (
    SIM_Person_person_id ASC
  )
  ;
  ALTER TABLE SIM_dept ADD CONSTRAINT SIM_dept_PK PRIMARY KEY ( dept_id ) ;

CREATE TABLE SIM_p2p
  (
    per_proj               INTEGER NOT NULL ,
    SIM_Person_person_id   INTEGER ,
    SIM_project_project_id INTEGER
  ) ;
ALTER TABLE SIM_p2p ADD CONSTRAINT SIM_p2p_PK PRIMARY KEY ( per_proj ) ;

CREATE TABLE SIM_project
  (
    project_id       INTEGER NOT NULL ,
    name             VARCHAR2 (255) ,
    SIM_dept_dept_id INTEGER
  ) ;
ALTER TABLE SIM_project ADD CONSTRAINT SIM_project_PK PRIMARY KEY ( project_id ) ;

ALTER TABLE SIM_Person ADD CONSTRAINT SIM_Person_SIM_dept_FK FOREIGN KEY ( SIM_dept_dept_id2 ) REFERENCES SIM_dept ( dept_id ) ;

ALTER TABLE SIM_p2p ADD CONSTRAINT SIM_p2p_SIM_Person_FK FOREIGN KEY ( SIM_Person_person_id ) REFERENCES SIM_Person ( person_id ) ;

ALTER TABLE SIM_p2p ADD CONSTRAINT SIM_p2p_SIM_project_FK FOREIGN KEY ( SIM_project_project_id ) REFERENCES SIM_project ( project_id ) ;

ALTER TABLE SIM_project ADD CONSTRAINT SIM_project_SIM_dept_FK FOREIGN KEY ( SIM_dept_dept_id ) REFERENCES SIM_dept ( dept_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             2
-- ALTER TABLE                              8
-- CREATE VIEW                              0
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
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0