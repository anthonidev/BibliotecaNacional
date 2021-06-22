
package negocio;

import java.io.InputStream;

public class Libro {
    private int IdLibro, IdCategoria, Stock, Estado;
    private String Nombre, Categoria, Descripcion;
    private double Precio;
    private byte[] Foto;
    private InputStream Portada;

    public Libro() {
    }

    public Libro(int Stock, String Nombre, int IdCategoria, String Descripcion, InputStream Portada, double Precio) {
        this.Stock = Stock;
        this.Nombre = Nombre;
        this.IdCategoria = IdCategoria;
        this.Descripcion = Descripcion;
        this.Portada = Portada;
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

    public int getIdCategoria() {
        return IdCategoria;
    }

    public void setIdCategoria(int IdCategoria) {
        this.IdCategoria = IdCategoria;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public byte[] getFoto() {
        return Foto;
    }

    public void setFoto(byte[] Foto) {
        this.Foto = Foto;
    }

    public InputStream getPortada() {
        return Portada;
    }

    public void setPortada(InputStream Portada) {
        this.Portada = Portada;
    }
}

