package persistencia;

import java.util.List;

public interface ubigeoDao {
    public List listarId(String Dep, String Pro, String Dis);
    public List listarDep();
    public List listarPro();
    public List listarDis();
}
