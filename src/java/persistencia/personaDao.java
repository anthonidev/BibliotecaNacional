
package persistencia;

import java.util.List;
import negocio.Persona;

public interface personaDao {
     public String grabar(Persona Per);
    public Persona buscar(String Dni);
    public String actualizar();
    public String eliminar(String codPer);
    public List listar();
    public int lastId();
}
