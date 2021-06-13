package negocio;

public class Empleado {
    private int IdPerEm , idCuenta, IdTip;
    private String nomTip;

    public Empleado() {
    }

    public Empleado(int IdPerEm, int idCuenta, int IdTip) {
        this.IdPerEm = IdPerEm;
        this.idCuenta = idCuenta;
        this.IdTip = IdTip;
    }

    public int getIdPerEm() {
        return IdPerEm;
    }

    public void setIdPerEm(int IdPerEm) {
        this.IdPerEm = IdPerEm;
    }

    public int getIdCuenta() {
        return idCuenta;
    }

    public void setIdCuenta(int idCuenta) {
        this.idCuenta = idCuenta;
    }

    public int getIdTip() {
        return IdTip;
    }

    public void setIdTip(int IdTip) {
        this.IdTip = IdTip;
    }

    public String getNomTip() {
        return nomTip;
    }

    public void setNomTip(String nomTip) {
        this.nomTip = nomTip;
    }
}
