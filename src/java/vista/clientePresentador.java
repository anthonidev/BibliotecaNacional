package vista;

import java.util.ArrayList;
import java.util.List;

public class clientePresentador {

    private Object[] fil = {"", "", "", "", "", "", "", "", "", "", ""};
    private Object[] user = {"", "", ""};
    private List lisUser = new ArrayList();
    private List lis = new ArrayList();
    private String msg = "";
    private String usuario="";

    
    private String pro="",dis="",dep="";
    private int codigoCuenta=0;

    public int getCodigoCuenta() {
        return codigoCuenta;
    }

    public void setCodigoCuenta(int codigoCuenta) {
        this.codigoCuenta = codigoCuenta;
    }

    
    public String getPro() {
        return pro;
    }

    public void setPro(String pro) {
        this.pro = pro;
    }

    public String getDis() {
        return dis;
    }

    public void setDis(String dis) {
        this.dis = dis;
    }

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }
    
    
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public Object[] getUser() {
        return user;
    }

    public void setUser(Object[] user) {
        this.user = user;
    }

    public List getLisUser() {
        return lisUser;
    }

    public void setLisUser(List lisUser) {
        this.lisUser = lisUser;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public clientePresentador() {
        lis.add(fil);
        lisUser.add(user);
    }

    public Object[] getFil() {
        return fil;
    }

    public void setFil(Object[] fil) {
        this.fil = fil;
    }

    public List getLis() {
        return lis;
    }

    public void setLis(List lis) {
        this.lis = lis;
    }

}
