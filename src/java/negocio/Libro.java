<<<<<<< HEAD
package negocio;

public class Libro {
    private int IdLibro, IdCat, Stock, Estado;
    private String Nombre,Descripcion,Foto;
    private double precio;

    public Libro() {
    }

    public Libro(int IdCat, int Stock, String Nombre, String Descripcion, String Foto, double precio) {
        this.IdCat = IdCat;
        this.Stock = Stock;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Foto = Foto;
        this.precio = precio;
    }

    public Libro(int IdLibro, int IdCat, int Stock, String Nombre, String Descripcion, String Foto, double precio) {
        this.IdLibro = IdLibro;
        this.IdCat = IdCat;
        this.Stock = Stock;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Foto = Foto;
        this.precio = precio;
    }

    public Libro(int IdLibro, int Estado) {
        this.IdLibro = IdLibro;
        this.Estado = Estado;
    }

    public int getIdLibro() {
        return IdLibro;
    }

    public void setIdLibro(int IdLibro) {
        this.IdLibro = IdLibro;
    }

    public int getIdCat() {
        return IdCat;
    }

    public void setIdCat(int IdCat) {
        this.IdCat = IdCat;
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
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
}
=======
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
>>>>>>> main
