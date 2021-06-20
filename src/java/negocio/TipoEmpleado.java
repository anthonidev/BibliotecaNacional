
package negocio;

public class TipoEmpleado {
    private int idTip;
    private String nombre;

    public TipoEmpleado() {
    }
    
    public TipoEmpleado(String nombre) {
        this.nombre = nombre;
    }

    public int getIdTip() {
        return idTip;
    }

    public void setIdTip(int idTip) {
        this.idTip = idTip;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
