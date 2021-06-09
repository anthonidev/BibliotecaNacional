
package servicio;

import java.util.List;

public interface cuentaServicio {
    public String grabar(String user,String pass);
    public String actualizar(int IdCuenta, String user, String pass);
    public String eliminar(int IdCuenta);
    public List listar();
    public Object[] buscar(String user);
    public Object[] buscarId(int IdCuenta);
    public Object[]validar(String user,String pass);
}
