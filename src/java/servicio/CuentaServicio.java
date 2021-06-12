package servicio;

public interface CuentaServicio {
    public String actualizar(String pass, String dni);
    public Object[] validar(String user, String pass);
}
