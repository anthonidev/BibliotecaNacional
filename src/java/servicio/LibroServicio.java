package servicio;

import java.util.List;

public interface LibroServicio {
    public Object[] buscar(int idLibro);
    public String grabar(String nombre, String categoria, String descripcion, int stock, double precio, String foto);
    public String actualizar(int idLibro, int stock, double precio, String descripcion);
    public String actualizarEstado(int IdLibro, int estado);
    public String eliminar(int idLibro);
    public List listarCategoria();
    public List listar();
}
