package persistencia;

import java.util.List;
import negocio.cuenta;

public interface cuentaDao {

    public String grabar(cuenta cu);

    public String actualizar();

    public String eliminar(int IdCuenta);

    public List listar();

    public cuenta buscar(String user);

    public cuenta buscarid(int idCuenta);

    public cuenta validar(String user, String pass);

}
