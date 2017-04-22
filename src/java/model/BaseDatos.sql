/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  T-102
 * Created: 22/04/2017
 */

CREATE TABLE USUARIO(ID INTEGER PRIMARY KEY,NOMBRE VARCHAR2(20), PATERNO VARCHAR2(20));

CREATE SEQUENCE SEC_USUARIO
START WITH 1
INCREMENT BY 1
NOMAXVALUE;

            

CREATE OR REPLACE PROCEDURE GUARDAR_USUARIO(MY_ID OUT INTEGER, 
             MY_NOMBRE IN VARCHAR2,MY_PATERNO IN VARCHAR2)
              AS
              BEGIN
              SELECT SEC_USUARIO.NEXTVAL INTO MY_ID FROM DUAL;
              INSERT INTO USUARIO(ID,NOMBRE,PATERNO)
              VALUES (MY_ID,MY_NOMBRE,MY_PATERNO);
              END;
              /
              
              SELECT *FROM USUARIO;