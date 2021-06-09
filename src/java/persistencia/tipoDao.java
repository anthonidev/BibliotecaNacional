
package persistencia;

import negocio.tipoEmpleado;

public interface tipoDao {
    public tipoEmpleado buscar(String nombre);
    public tipoEmpleado buscarId(int idTip);
}
