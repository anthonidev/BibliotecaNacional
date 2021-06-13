package servicio;

import java.util.List;

public interface personaServicio {

    public String grabar(String nombre, String apellidos, String dni, String direccion, String telefono, String fechana, String idDist, String idPro, String idDep, String user, String pass);

    public Object[] buscar(String Dni);

    public Object[] buscarId(int IdPer);

    public String actualizar(int IdPer, String Nombre, String Apellidos, String Dni, String Telefono, String FechaNa, String IdDist, String IdPro, String IdDep, String Direccion);

    public String eliminar(int IdPer);

    public List listar();

    public int lastId();
}
