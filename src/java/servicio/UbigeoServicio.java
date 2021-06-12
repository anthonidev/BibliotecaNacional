package servicio;

import java.util.List;

public interface UbigeoServicio {
    public List listarId(String Dep, String Pro, String Dis);
    public List listarDep();
    public List listarPro();
    public List listarDis();
    
    
    public List listarDep(String name); 
    public List listarDis(String codDe,String name,String codPro); 
    public List listarPro(String codDe,String name); 
     public Object[] buscarDep(String id);
     public Object[] buscarDis(String id);
     public Object[] buscarPro(String id);
    public List listarDepId(String id);
    public List listarDisId(String id);
    public List listarProId(String id);
}
