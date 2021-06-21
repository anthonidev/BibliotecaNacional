
package persistencia;

import java.util.List;
import negocio.Persona;
import negocio.Presentador;

public interface EmpleadoDao {
    public String grabar(Presentador pre);
    public Presentador buscar(Persona per);
    public String actualizar(Presentador pre);
    public String eliminar(Persona per);
    public List listar();
}
