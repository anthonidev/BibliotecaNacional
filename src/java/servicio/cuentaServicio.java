
package servicio;

import java.util.List;

public interface cuentaServicio {
    public String grabar(String user,String pass);
    public String actualizar();
    public String eliminar(int IdCuenta);
    public List listar();
    public Object[] buscar(String user);
    public Object[] buscarid(int idCuenta);
    public Object[]validar(String user,String pass);
}
