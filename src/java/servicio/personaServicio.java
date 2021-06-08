package servicio;

import java.util.List;


public interface personaServicio {
    public String grabar(String Nombre, String Apellidos, String Dni, String Direccion, String Telefono, String FechaNa, String IdDist, String IdPro, String IdDep);
    public Object[] buscar(String Dni);
    public Object[] buscarId(int IdPer);
    public String actualizar();
    public String eliminar(int IdPer);
    public List listar();
    public int lastId();
}
