
package persistencia;

import negocio.Pedido;

public interface pedidoDao {
    
    public String grabar(Pedido pe);
    public String actualizar(Pedido pe);
    public Pedido buscarId(int IdPedido);
    
    
}
