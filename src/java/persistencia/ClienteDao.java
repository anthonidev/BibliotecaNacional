package persistencia;

import negocio.Cliente;

public interface ClienteDao {
    public String grabar(Cliente cli);
    public String eliminar(int IdPerCli);
    public Cliente buscar(int idPerCli);
}
