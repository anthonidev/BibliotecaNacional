package persistencia;

import negocio.Presentador;

public interface cuentaDao {
    public String actualizar(Presentador pre);
    public String eliminar(int IdCuenta);
    public Presentador validar(String user, String pass);
}
