package persistencia;

import java.util.List;

public interface ubigeoDao {
    public List listarDep(); 
    public List listarDis(String cod); 
    public List listarPro(String cod); 
}
