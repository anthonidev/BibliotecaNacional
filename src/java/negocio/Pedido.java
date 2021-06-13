package negocio;

public class Pedido {

    private int IdPedido, IdPerCli, estado;
    private String fecha;
    private double Total;

    public Pedido() {
    }

    public Pedido(int IdPerCli, String fecha, double Total) {
        this.IdPerCli = IdPerCli;
        this.fecha = fecha;
        this.Total = Total;
    }

    public Pedido(int IdPerCli, int estado) {
        this.IdPerCli = IdPerCli;
        this.estado = estado;
    }

    public Pedido(int IdPedido, int IdPerCli, int estado, String fecha, double Total) {
        this.IdPedido = IdPedido;
        this.IdPerCli = IdPerCli;
        this.estado = estado;
        this.fecha = fecha;
        this.Total = Total;
    }

    public int getIdPedido() {
        return IdPedido;
    }

    public void setIdPedido(int IdPedido) {
        this.IdPedido = IdPedido;
    }

    public int getIdPerCli() {
        return IdPerCli;
    }

    public void setIdPerCli(int IdPerCli) {
        this.IdPerCli = IdPerCli;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public double getTotal() {
        return Total;
    }

    public void setTotal(double Total) {
        this.Total = Total;
    }
    

}
