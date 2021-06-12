package persistencia;

import negocio.Presentador;

public interface CuentaDao {
    public String actualizar(Presentador pre);
    public Presentador validar(String user, String pass);
}
