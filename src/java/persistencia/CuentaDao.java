package persistencia;

import negocio.Presentador;

public interface CuentaDao {
    public void actualizar(Presentador pre);
    public Presentador validar(String user, String pass);
    public Presentador validarCliente(String user, String pass);
}
