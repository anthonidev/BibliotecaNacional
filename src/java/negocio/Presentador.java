package negocio;

public class Presentador {
    private Persona per;
    private Cuenta cu;
    private TipoEmpleado tip;
    private Pedido ped;
    private Boleta bole;

    public Presentador(Persona per, Boleta bole) {
        this.per = per;
        this.bole = bole;
    }

    
    public Presentador(Persona per, TipoEmpleado tip) {
        this.per = per;
        this.tip = tip;
    }

    public Presentador(Persona per, Cuenta cu) {
        this.per = per;
        this.cu = cu;
    }

    public Presentador(Persona per, Pedido ped) {
        this.per = per;
        this.ped = ped;
    }

    public Presentador(Persona per, Cuenta cu, TipoEmpleado tip) {
        this.per = per;
        this.cu = cu;
        this.tip = tip;
    }

    public Boleta getBole() {
        return bole;
    }

    public void setBole(Boleta bole) {
        this.bole = bole;
    }
    

    public Persona getPer() {
        return per;
    }

    public void setPer(Persona per) {
        this.per = per;
    }

    public Cuenta getCu() {
        return cu;
    }

    public void setCu(Cuenta cu) {
        this.cu = cu;
    }

    public TipoEmpleado getTip() {
        return tip;
    }

    public void setTip(TipoEmpleado tip) {
        this.tip = tip;
    }

    public Pedido getPed() {
        return ped;
    }

    public void setPed(Pedido ped) {
        this.ped = ped;
    }
}