package persistencia;

import negocio.Cuenta;
import negocio.Presentador;

public interface CuentaDao {
    public void actualizar(Presentador pre);
    public Presentador validar(Cuenta cu);
    public Presentador validarCliente(Cuenta cu);
}
