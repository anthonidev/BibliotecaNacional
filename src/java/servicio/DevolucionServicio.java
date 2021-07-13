
package servicio;

public interface DevolucionServicio {
    public double CalcularDevolucion(String libros,String dias);
     public String RegistrarDevolucion(String cod, String fecha, String total);
}
