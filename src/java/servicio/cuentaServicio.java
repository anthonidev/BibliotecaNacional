
package servicio;

public interface cuentaServicio {
    public String actualizar(String pass, String dni);
    public String eliminar(int idCuenta);
    public Object[] validar(String user, String pass);
}
