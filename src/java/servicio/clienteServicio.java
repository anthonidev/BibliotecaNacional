package servicio;

public interface clienteServicio {

    public String grabar(int IdPerCli, int IdCuenta);

    public String eliminar(int IdPerCli);

    public Object[] buscar(int idPerCli);

}
