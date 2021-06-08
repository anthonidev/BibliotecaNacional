
package persistencia;

import negocio.empleado;

public interface empleadoDao {
    public String grabar(empleado emp);
    public empleado buscarId(int IdPerEm);
    public empleado buscar(int idCuenta);
    public String eliminar(int idCuenta);
}
