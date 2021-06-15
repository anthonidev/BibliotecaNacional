package persistencia;

import java.util.List;

public interface BoletaDao {
    public String grabarBoleta(BoletaDao bo);
    public BoletaDao buscarBoleta(String cod);
    public List listarBoleta(); 
}
