package negocio;

public class Presentador {
    private Persona per;
    private Cuenta cu;
    private TipoEmpleado tip;
    private Empleado emp;

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