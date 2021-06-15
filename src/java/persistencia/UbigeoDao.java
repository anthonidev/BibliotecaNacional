<<<<<<< HEAD
package persistencia;

import java.util.List;
import negocio.Ubigeo;

public interface UbigeoDao {
    public List listarId(String Dep, String Pro, String Dis);
    public List listarDep();
    public List listarPro();
    public List listarDis();
}
=======
package persistencia;

import java.util.List;

public interface UbigeoDao {
    public List listarDep();
    public List listarPro();
    public List listarDis();
}
>>>>>>> main
