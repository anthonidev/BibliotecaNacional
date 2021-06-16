package persistencia;

import java.util.List;

public interface UbigeoDao {
    public List listarDep();
    public List listarPro(String Dep);
    public List listarDis(String Dep, String Pro);
}
