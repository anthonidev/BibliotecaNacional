<<<<<<< HEAD
package servicio;

import java.util.List;

public interface LibroServicio {
    public String grabar(String Nombre, int IdCat, String Descripcion, int Stock, double Precio, String Foto);
    public Object[] buscarId(int IdLibro);
    public String actualizar(int IdLibro, String Nombre, int IdCat, String Descripcion, int Stock, double Precio);
    public String actualizarFoto(String Foto);
    public String actualizarEstado(int IdLibro, int Estado);
    public String eliminar(int IdLibro);
    public List listar();
    public int lastId();
}
=======
package servicio;

import java.util.List;

public interface LibroServicio {
    public Object[] buscar(int idLibro);
    public String grabar(String nombre, String categoria, String descripcion, int stock, double precio, String foto);
    public String actualizar(int idLibro, int stock, double precio, String descripcion);
    public String actualizarEstado(int idLibro, int estado);
    public String eliminar(int idLibro);
    public List listarCategoria();
    public List listar();
}
>>>>>>> main
