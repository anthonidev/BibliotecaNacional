
package persistencia;

import negocio.cliente;


public interface clienteDao {
    public String grabar(cliente cli);
    public String eliminar(int IdPerCli);
    public cliente buscar(int idPerCli);
}
