package servicio;

import java.util.List;

public interface pedidoServicio {

    public String grabar(int IdPerCli, String fecha, int estado, double Total);

    public String AprobarPedido(int IdPerCli);

    public String NegarPedido(int IdPerCli);

    public Object[] buscar(int IdPerCli);

    public List listarDetalle(int IdPerCli);

    public List listarPedido(int estado);

}
