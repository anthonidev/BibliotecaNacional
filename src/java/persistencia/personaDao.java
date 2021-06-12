
package persistencia;

import java.util.List;
import negocio.Persona;
import negocio.Presentador;

public interface personaDao {
    public String grabar(Presentador pre);
    public String grabarasas(Persona Per);
    public Persona buscar(String Dni);
    public Persona buscarId(int IdPer);
    public String actualizar(Persona Per);
    public String eliminar(int IdPer);
    public List listar();
    public int lastId();
}
