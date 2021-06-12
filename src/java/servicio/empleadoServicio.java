
package servicio;


public interface empleadoServicio {
    public String grabar(String nombre, String apellidos, String dni, String direccion, String telefono, String fechana, String idDist, String idPro, String idDep, String user, String pass, String nomTipo);
    public Object[] buscar(String Dni);
    public String actualizar(String nombre, String apellidos, String direccion, String telefono, String fechana, String idDist, String idPro, String idDep, String nomTipo);
    public String eliminar(String dni);
}
