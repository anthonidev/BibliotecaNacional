
package persistencia;

import java.util.List;
import negocio.TipoEmpleado;

public interface tipoDao {
    public TipoEmpleado buscar(String nombre);
    public TipoEmpleado buscarId(int idTip);
    public List listar();
}
