package persistencia;

import java.util.List;
import negocio.Ubigeo;

public interface ubigeoDao {
    public List listarId(String Dep, String Pro, String Dis);
    public List listarDep();
    public List listarPro();
    public List listarDis();
    
    
     public List listarDep(String name); 
    public List listarDis(String codDe,String name,String codPro); 
    public List listarPro(String codDe,String name); 
    public Ubigeo buscarDep(String id);
    public Ubigeo buscarDis(String id);
    public Ubigeo buscarPro(String id);
    public List listarDepId(String id);
    public List listarDisId(String id);
    public List listarProId(String id);
}
