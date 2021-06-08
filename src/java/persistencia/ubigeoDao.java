package persistencia;

import java.util.List;

public interface ubigeoDao {
    public List listarDep(String name);
    public List listarDepId(String id);
    public List listarDis(String codDe,String name,String codPro);
    public List listarDisId(String id);
    public List listarPro(String codDe,String name);
    public List listarProId(String id);
}
