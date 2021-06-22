package persistencia;

import java.util.List;
import negocio.Ubigeo;

public interface UbigeoDao {
    public List listarDep();
    public List listarPro(Ubigeo ubi);
    public List listarDis(Ubigeo ubi);
    
}
