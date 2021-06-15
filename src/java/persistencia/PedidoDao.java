package persistencia;

import java.util.List;
import negocio.BuscarPedido;
import negocio.Pedido;

public interface PedidoDao {
    public String grabar(Pedido pe);
    public String AprobarPedido(int IdPedido);
    public String NegarPedido(int IdPedido);
    public BuscarPedido buscarId(int IdPedido);
    public List listarDetalle(int IdPedido);
    public List listarPedido(int estado);
}