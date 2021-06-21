package persistencia;

import java.util.List;
import negocio.Pedido;
import negocio.Presentador;

public interface PedidoDao {
    public String grabarPedido(Pedido pe);
    public String grabarDetalle(Pedido pe);
    public String AprobarPedido(Pedido pe);
    public String NegarPedido(Pedido pe);
    public Presentador buscar(Pedido pe);
    public List listarDetalle(Pedido pe);
    public List listarPedido(Pedido pe);
}
