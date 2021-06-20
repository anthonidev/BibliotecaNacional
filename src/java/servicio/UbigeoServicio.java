package servicio;

import java.util.List;

public interface UbigeoServicio {
    public List listarDep();
    public List listarPro(String Dep);
    public List listarDis(String Dep, String Pro);
}