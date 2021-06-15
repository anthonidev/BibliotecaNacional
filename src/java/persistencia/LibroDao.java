<<<<<<< HEAD
package persistencia;

import java.util.List;
import negocio.Libro;

public interface LibroDao {
    public String grabar(Libro lib);
    public Libro buscarId(int IdLibro);
    public String actualizar(Libro lib);
    public String actualizarFoto(Libro lib);
    public String eliminar(int IdLibro);
    public List listar();
    public int lastId();
}
=======
package persistencia;

import java.util.List;
import negocio.Libro;

public interface LibroDao {
    public Libro buscar(int idLibro);
    public String grabar(Libro lib);
    public String actualizar(Libro lib);
    public String actualizarEstado(int idLibro, int estado);
    public String eliminar(int idLibro);
    public List listarCategoria();
    public List listar();
}
>>>>>>> main
