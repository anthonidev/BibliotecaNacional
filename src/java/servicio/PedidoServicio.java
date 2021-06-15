package servicio;

import java.util.List;

public interface PedidoServicio {
    public String grabar(int IdPerCli, String fecha, int estado, double Total);
    public String aprobarPedido(int IdPerCli);
    public String negarPedido(int IdPerCli);
    public Object[] buscar(int IdPerCli);
    public List listarDetalle(int IdPerCli);
    public List listarPedido(int estado);
}
