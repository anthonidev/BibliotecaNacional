
package persistencia;

import java.util.List;
import negocio.Persona;

public interface personaDao {
     public String grabar(Persona Per);
    public Persona buscar(String Dni);
    public Persona buscarId(int IdPer);
    public String actualizar();
    public String eliminar(int IdPer);
    public List listar();
    public int lastId();
}
