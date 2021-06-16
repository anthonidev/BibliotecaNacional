package negocio;

public class Presentador {
    private Persona per;
    private Cuenta cu;
    private TipoEmpleado tip;
    private Empleado emp;
    private Cliente cli;

    public Presentador(Persona per, TipoEmpleado tip) {
        this.per = per;
        this.tip = tip;
    }

    public Presentador(Persona per, Cuenta cu) {
        this.per = per;
        this.cu = cu;
    }

    public Presentador(Persona per, Cuenta cu, TipoEmpleado tip) {
        this.per = per;
        this.cu = cu;
        this.tip = tip;
    }

    public Presentador(Persona per, Cuenta cu, Cliente cli) {
        this.per = per;
        this.cu = cu;
        this.cli = cli;
    }

    public Cliente getCli() {
        return cli;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
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

    public Empleado getEmp() {
        return emp;
    }

    public void setEmp(Empleado emp) {
        this.emp = emp;
    }
}
