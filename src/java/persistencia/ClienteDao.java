<<<<<<< HEAD
package persistencia;

import java.util.List;
import negocio.Cliente;

public interface ClienteDao {
     public String grabarCliente(Cliente pe);
    public Cliente buscarCliente(String documento);
    public List listarCliente();
    public String EliminarCliente(int cod,String usu);
}
=======
package persistencia;

import java.util.List;
import negocio.Cliente;

public interface ClienteDao {
    public String grabarCliente(Cliente pe);
    public Cliente buscarCliente(String documento);
    public List listarCliente();
    public String EliminarCliente(int cod,String usu);
}
>>>>>>> main
