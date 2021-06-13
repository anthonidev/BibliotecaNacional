package servicio;

import java.util.List;

public interface TipoServicio {
    public Object[] buscar(String nombre);
    public Object[] buscarId(int idTip);
    public List listar();
}
