
package persistencia;

import java.util.List;
import negocio.Presentador;

public interface EmpleadoDao {
    public String grabar(Presentador pre);
    public Presentador buscar(String dni);
    public String actualizar(Presentador pre);
    public String eliminar(String dni);
    public List listar();
}
