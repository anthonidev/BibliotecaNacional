package persistencia;

import java.util.List;

public interface ubigeoDao {
    public List listarDep(String name); 
    public List listarDis(String codDe,String name,String codPro); 
    public List listarPro(String codDe,String name); 
}
