
package servicio;


public interface empleadoServicio {
    public String grabar(int IdPerEm ,int idCuenta ,int IdTip);
    public Object[]buscar(int idCuenta);
    public String eliminar(int idCuenta);
}
