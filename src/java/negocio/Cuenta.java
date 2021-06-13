package negocio;

public class Cuenta {
    private int IdCuenta;
    private String user,pass;

    public Cuenta() {
    }

    public Cuenta(String user, String pass) {
        this.user = user;
        this.pass = pass;
    }

    public Cuenta(String pass) {
        this.pass = pass;
    }

    public int getIdCuenta() {
        return IdCuenta;
    }

    public void setIdCuenta(int IdCuenta) {
        this.IdCuenta = IdCuenta;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}
