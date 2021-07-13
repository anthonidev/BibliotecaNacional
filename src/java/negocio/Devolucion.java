package negocio;

public class Devolucion {
    int cod;
    String fecha;
    double Total;

    public Devolucion() {
    }

    public Devolucion(int cod, String fecha, double Total) {
        this.cod = cod;
        this.fecha = fecha;
        this.Total = Total;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
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
