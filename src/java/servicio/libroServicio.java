package servicio;

import java.util.List;

public interface libroServicio {
    public String grabar(String Nombre, int IdCat, String Descripcion, int Stock, double Precio, String Foto);
    public Object[] buscarId(int IdLibro);
    public String actualizar(int IdLibro, String Nombre, int IdCat, String Descripcion, int Stock, double Precio);
    public String actualizarFoto(String Foto);
    public String actualizarEstado(int IdLibro, int Estado);
    public String eliminar(int IdLibro);
    public List listar();
    public int lastId();
}
