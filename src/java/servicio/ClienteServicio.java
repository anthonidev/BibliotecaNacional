package servicio;

import java.util.List;

public interface ClienteServicio {
    public Object[] buscarCliente(String dni);
    public String grabarCliente(String nombre, String apellidos, String dni, String direccion, String telefono, String fecha, String dep, String pro, String dis, String usuario, String password);
    public String actualizarCliente(String dni, String direccion, String telefono, String dep, String pro, String dis, String usuario);
    public String eliminarCliente(int cod,String usu);
    public List listarCliente();
}