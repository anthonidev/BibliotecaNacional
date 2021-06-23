package persistencia;

import java.util.List;
import negocio.Boleta;

public interface BoletaDao {
    public String grabar(Boleta bole);
    public Boleta buscar(Boleta bole);
    public List listar(); 
}
