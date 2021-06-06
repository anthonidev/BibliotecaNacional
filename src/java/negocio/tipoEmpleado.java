
package negocio;

public class tipoEmpleado {
    int idTip;
    String nombre;

    public tipoEmpleado() {
    }

    public tipoEmpleado(int idTip, String nombre) {
        this.idTip = idTip;
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
