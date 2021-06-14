package persistencia;

import java.util.List;
import negocio.Libro;

public interface LibroDao {
    public Libro buscar(int idLibro);
    public String grabar(Libro lib);
    public String actualizar(Libro lib);
    public String eliminar(int idLibro);
    public List listarCategoria();
    public List listar();
}
