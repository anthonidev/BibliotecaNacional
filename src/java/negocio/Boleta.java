
package negocio;

public class Boleta {
    int IdBoleta,IdPedido,IdPerEmp;
    String fecha, fechaDev;
    double Total;

    public Boleta() {
    }

    public Boleta(int IdPedido, int IdPerEmp, String fecha, String fechaDev, double Total) {
        this.IdPedido = IdPedido;
        this.IdPerEmp = IdPerEmp;
        this.fecha = fecha;
        this.fechaDev = fechaDev;
        this.Total = Total;
    }

    public Boleta(int IdBoleta) {
        this.IdBoleta = IdBoleta;
    }
    

    public int getIdBoleta() {
        return IdBoleta;
    }

    public void setIdBoleta(int IdBoleta) {
        this.IdBoleta = IdBoleta;
    }

    public int getIdPedido() {
        return IdPedido;
    }

    public void setIdPedido(int IdPedido) {
        this.IdPedido = IdPedido;
    }

    public int getIdPerEmp() {
        return IdPerEmp;
    }

    public void setIdPerEmp(int IdPerEmp) {
        this.IdPerEmp = IdPerEmp;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getFechaDev() {
        return fechaDev;
    }

    public void setFechaDev(String fechaDev) {
        this.fechaDev = fechaDev;
    }

    public double getTotal() {
        return Total;
    }

    public void setTotal(double Total) {
        this.Total = Total;
    }
    
    
}
