package negocio;

public class Pedido {

    private int IdPedido, IdPerCli, IdLibro, Cantidad, estado;

    private String fecha;
    private double Total, Precio;

    public Pedido() {
    }

    public Pedido(int IdLibro, int Cantidad, double Precio) {
        this.IdLibro = IdLibro;
        this.Cantidad = Cantidad;
        this.Precio = Precio;
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

    public Pedido(int IdPedido) {
        this.IdPedido = IdPedido;
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

    public int getIdLibro() {
        return IdLibro;
    }

    public void setIdLibro(int IdLibro) {
        this.IdLibro = IdLibro;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
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


    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }


}
