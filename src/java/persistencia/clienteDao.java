
package persistencia;

import negocio.Cliente;

public interface clienteDao {
    public String grabar(Cliente cli);
    public String eliminar(int IdPerCli);
}
