package servicio;

import java.io.InputStream;
import java.util.List;

public interface LibroServicio {
    public Object[] buscar(int idLibro);
    public String grabar(String nombre, int idCategoria, String descripcion, int stock, double precio, InputStream portada);
   
    public String actualizar(int idLibro, int stock, double precio, String descripcion);
    public String actualizarEstado(int idLibro, int estado);
    public String eliminar(int idLibro);
    public List listarCategoria();
    public List listar();
}
