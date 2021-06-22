package servicio;

import java.util.List;

public interface PedidoServicio {
    public String grabarPedido(int IdPerCli, double Total);
    public String grabarDetalle(int IdLibro, int Cantidad, double Precio);
    public String aprobarPedido(int IdPed);
    public String negarPedido(int IdPed);
    public Object[] buscar(int IdPed);
    public List listarDetalle(int IdPed);
    public List listarPedido(int estado);
}
