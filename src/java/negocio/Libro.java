package negocio;

public class Libro {
    private int IdLibro, Stock, Estado;
    private String Nombre,Categoria,Descripcion,Foto;
    private double Precio;

    public Libro() {
    }

    public Libro(int Stock, String Nombre, String Categoria, String Descripcion, String Foto, double Precio) {
        this.Stock = Stock;
        this.Nombre = Nombre;
        this.Categoria = Categoria;
        this.Descripcion = Descripcion;
        this.Foto = Foto;
        this.Precio = Precio;
    }

    public Libro(int IdLibro, int Stock, String Descripcion, double Precio) {
        this.IdLibro = IdLibro;
        this.Stock = Stock;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
    }

    public Libro(int IdLibro, int Estado) {
        this.IdLibro = IdLibro;
        this.Estado = Estado;
    }

    public Libro(int IdLibro) {
        this.IdLibro = IdLibro;
    }

    public int getIdLibro() {
        return IdLibro;
    }

    public void setIdLibro(int IdLibro) {
        this.IdLibro = IdLibro;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getCategoria() {
        return Categoria;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String Foto) {
        this.Foto = Foto;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }
}
