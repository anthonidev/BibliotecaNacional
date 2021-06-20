package persistencia;

import java.util.List;
import negocio.Libro;

public interface LibroDao {
    public Libro buscar(Libro lib);
    public String grabar(Libro lib);
    public String actualizar(Libro lib);
    public String actualizarEstado(Libro lib);
    public String eliminar(Libro lib);
    public List listarCategoria();
    public List listar();
}
