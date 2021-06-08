package persistencia;

import java.util.List;
import negocio.ubigeo;

public interface ubigeoDao {
    public List listarDep(String name); 
    public List listarDis(String codDe,String name,String codPro); 
    public List listarPro(String codDe,String name); 
    public ubigeo buscarDep(String id);
    public ubigeo buscarDis(String id);
    public ubigeo buscarPro(String id);
}
