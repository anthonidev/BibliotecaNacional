
package negocio;


public class cuenta {
    int IdCuenta;
    String user,pass;

    public cuenta() {
    }

    public cuenta(int IdCuenta, String user, String pass) {
        this.IdCuenta = IdCuenta;
        this.user = user;
        this.pass = pass;
    }

    public cuenta(String user, String pass) {
        this.user = user;
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
