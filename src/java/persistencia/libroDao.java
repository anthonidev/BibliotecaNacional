package persistencia;

import java.util.List;
import negocio.Libro;

public interface libroDao {
    public String grabar(Libro lib);
    public Libro buscarId(int IdLibro);
    public String actualizar(Libro lib);
    public String actualizarFoto(Libro lib);
    public String eliminar(int IdLibro);
    public List listar();
    public int lastId();
}
