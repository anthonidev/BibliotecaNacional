
package persistencia;

import negocio.Presentador;

public interface empleadoDao {
    public String grabar(Presentador pre);
    public Presentador buscar(String dni);
    public String actualizar(Presentador pre);
    public String eliminar(String dni);
}
