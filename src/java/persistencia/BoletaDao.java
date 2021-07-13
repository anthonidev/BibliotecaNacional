package persistencia;

import java.util.List;
import negocio.Boleta;
import negocio.Presentador;

public interface BoletaDao {
    public String grabar(Boleta bole);
    public Presentador buscar(Boleta bole);
    public List listar(); 
}
