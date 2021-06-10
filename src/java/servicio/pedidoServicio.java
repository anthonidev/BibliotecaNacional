package servicio;

public interface pedidoServicio {

    public String grabar(int IdPerCli, String fecha, int estado, double Total);

    public String actualizar(int IdPerCli, int estado);

    public Object[] buscar(int IdPerCli);

}
