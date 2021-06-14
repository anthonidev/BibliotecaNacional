package servicio;

import java.util.List;

public interface ClienteServicio {
    public String grabarCliente(String nombre, String apellidos, String documento, String direccion, String telefono, String fecha, String dep, String pro, String dis, String usuario, String password);
    public Object[] buscarCliente(String documento);
    public List listarCliente();
    public String EliminarCliente(int cod,String usu);
}