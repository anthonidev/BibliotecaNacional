package servicio;

public interface CuentaServicio {
    public void actualizar(String pass, String dni);
    public Object[] validar(String user, String pass);
    public Object[] validarCliente(String user, String pass);
}
