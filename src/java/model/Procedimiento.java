/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author conke
 */

import java.sql.CallableStatement;
import java.sql.Connection;
        
public class Procedimiento {
    public static void main(String args[])throws Exception{
        Conexion c=new Conexion();
        Connection con=c.conectarse();
        CallableStatement   PROCE=con.prepareCall("{call GUARDAR_USUARIO(?,?,?,?)}");
        PROCE.registerOutParameter(1,java.sql.Types.INTEGER);
        PROCE.setString(2, "Miguel");
        PROCE.setString(3, "Miravalle");
        PROCE.setString(4, "Ing.Sistemas");
        
        PROCE.execute();
        int pk=PROCE.getInt(1);
        System.out.println("Total de usuarios registrados: "+pk);
    }
}
