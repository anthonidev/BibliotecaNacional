package negocio;
public class Cliente {
    private int idPerCli,idCuenta;

    public Cliente() {
    }

    public Cliente(int idPerCli, int idCuenta) {
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
