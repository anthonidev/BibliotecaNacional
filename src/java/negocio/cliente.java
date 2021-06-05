package negocio;
public class cliente {
    int idPerCli,idCuenta;

    public cliente() {
    }

    public cliente(int idPerCli, int idCuenta) {
        this.idPerCli = idPerCli;
        this.idCuenta = idCuenta;
    }

    public int getIdPerCli() {
        return idPerCli;
    }

    public void setIdPerCli(int idPerCli) {
        this.idPerCli = idPerCli;
    }

    public int getIdCuenta() {
        return idCuenta;
    }

    public void setIdCuenta(int idCuenta) {
        this.idCuenta = idCuenta;
    }
    
}
