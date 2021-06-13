package servicio;

import java.util.List;

public interface EmpleadoServicio {
    public String grabar(String nombre, String apellidos, String dni, String direccion, String telefono, String fechana, String idDist, String idPro, String idDep, String user, String pass, String nomTipo);
    public Object[] buscar(String Dni);
    public String actualizar(String direccion, String telefono, String idDist, String idPro, String idDep, String dni, String nomTipo);
    public String eliminar(String dni);
    public List listar();
}
