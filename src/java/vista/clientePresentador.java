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
