package vista;

import java.util.ArrayList;
import java.util.List;

public class PresentadorGeneral {
    private Object[] pedido = {"", "", "", "", "", "", "", ""};
    private Object[] detalle={"","","",""};
    
    private Object[] cliente={"", "", "", "", "", "", "", "","", "", "", ""};
    private List listaClienteBuscar = new ArrayList();
    
    private List lista = new ArrayList();
    private List listaDetalle = new ArrayList();
    private String msg = "";
    private String ctr="" ;
   
    private Object[] UserCliente={"","","",""};
    private List cliUsu= new ArrayList();
    
    public PresentadorGeneral() {
        lista.add(pedido);
        listaDetalle.add(detalle);
        listaClienteBuscar.add(cliente);
        cliUsu.add(UserCliente);
    }

    public String getCtr() {
        return ctr;
    }

    public void setCtr(String ctr) {
        this.ctr = ctr;
    }

    public Object[] getUserCliente() {
        return UserCliente;
    }

    public void setUserCliente(Object[] UserCliente) {
        this.UserCliente = UserCliente;
    }

    public List getCliUsu() {
        return cliUsu;
    }

    public void setCliUsu(List cliUsu) {
        this.cliUsu = cliUsu;
    }

    public Object[] getCliente() {
        return cliente;
    }

    public void setCliente(Object[] cliente) {
        this.cliente = cliente;
    }

    public List getListaClienteBuscar() {
        return listaClienteBuscar;
    }

    public void setListaClienteBuscar(List listaClienteBuscar) {
        this.listaClienteBuscar = listaClienteBuscar;
    }
    
    public Object[] getDetalle() {
        return detalle;
    }

    public void setDetalle(Object[] detalle) {
        this.detalle = detalle;
    }

    public List getListaDetalle() {
        return listaDetalle;
    }

    public void setListaDetalle(List listaDetalle) {
        this.listaDetalle = listaDetalle;
    }

    public Object[] getPedido() {
        return pedido;
    }

    public void setPedido(Object[] pedido) {
        this.pedido = pedido;
    }

    public List getLista() {
        return lista;
    }

    public void setLista(List lista) {
        this.lista = lista;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}