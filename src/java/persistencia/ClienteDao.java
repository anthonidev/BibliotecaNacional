package persistencia;

import java.util.List;
import negocio.Persona;
import negocio.Presentador;

public interface ClienteDao {
    public String grabarCliente(Presentador pre);
    public Presentador buscarCliente(Persona per);
    public List listarCliente();

    public String eliminarCliente(Presentador pre);
    public String actualizarCliente(Presentador pre);

}
