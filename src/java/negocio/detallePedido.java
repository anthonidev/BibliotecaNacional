
package negocio;

public class detallePedido {
    int IdDetalle,IdPedido,IdLibro,Cantidad;
    double Precio;

    public detallePedido(int IdDetalle, int IdPedido, int IdLibro, int Cantidad, double Precio) {
        this.IdDetalle = IdDetalle;
        this.IdPedido = IdPedido;
        this.IdLibro = IdLibro;
        this.Cantidad = Cantidad;
        this.Precio = Precio;
    }

    public detallePedido() {
    }

    public detallePedido(int IdPedido, int IdLibro, int Cantidad, double Precio) {
        this.IdPedido = IdPedido;
        this.IdLibro = IdLibro;
        this.Cantidad = Cantidad;
        this.Precio = Precio;
    }

    public int getIdDetalle() {
        return IdDetalle;
    }

    public void setIdDetalle(int IdDetalle) {
        this.IdDetalle = IdDetalle;
    }

    public int getIdPedido() {
        return IdPedido;
    }

    public void setIdPedido(int IdPedido) {
        this.IdPedido = IdPedido;
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

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }
    
}
