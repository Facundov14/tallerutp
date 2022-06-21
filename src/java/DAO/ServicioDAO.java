package DAO;

import Util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Modelo.*;
import java.util.ArrayList;
import java.util.List;

public class ServicioDAO {
    
    //VATIABLES PARA CONEXION 
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public List listarServicios(){
        List<Servicio> listaServicios = new ArrayList<>();
        
        String sql = "select * from servicio";
        
        try {
            con = cn.getConnection();           
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Servicio servicio = new Servicio();
                servicio.setCodigoServicio(rs.getInt("Cod_Serv"));
                servicio.setNombreServicio(rs.getString("NombreServicio"));
                servicio.setDescripcionServicio(rs.getString("Descripcion"));
                servicio.setPrecioServicio(rs.getDouble("Precio"));
                listaServicios.add(servicio);
            }
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return listaServicios;
    }
    
    public Servicio obtenerServicio(int codigoServicio){ 
        
        Servicio servicio = new Servicio();
        String sql = "select * from servicio where Cod_Serv="+codigoServicio;
        
        try {
            con = cn.getConnection();           
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                servicio.setCodigoServicio(rs.getInt("Cod_Serv"));
                servicio.setNombreServicio(rs.getString("NombreServicio"));
                servicio.setDescripcionServicio(rs.getString("Descripcion"));
                servicio.setPrecioServicio(rs.getDouble("Precio"));
            }
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return servicio;
    }
    
}
