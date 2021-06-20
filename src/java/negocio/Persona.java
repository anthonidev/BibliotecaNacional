package negocio;

public class Persona {
    private int codPer;
    private String Nombre, Apellidos, Dni, Direccion, Telefono, FechaNa, Dis, Pro, Dep;
    
    public Persona() { }

    public Persona(String Nombre, String Apellidos, String Dni, String Direccion, String Telefono, String FechaNa, String Dis, String Pro, String Dep) {
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Dni = Dni;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.FechaNa = FechaNa;
        this.Dis = Dis;
        this.Pro = Pro;
        this.Dep = Dep;
    }

    public Persona(String Dni, String Direccion, String Telefono, String Dis, String Pro, String Dep) {
        this.Dni = Dni;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Dis = Dis;
        this.Pro = Pro;
        this.Dep = Dep;
    }

    public Persona(String Dni) {
        this.Dni = Dni;
    }

    public Persona(int codPer) {
        this.codPer = codPer;
    }

    public int getCodPer() {
        return codPer;
    }

    public void setCodPer(int codPer) {
        this.codPer = codPer;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getDni() {
        return Dni;
    }

    public void setDni(String Dni) {
        this.Dni = Dni;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getFechaNa() {
        return FechaNa;
    }

    public void setFechaNa(String FechaNa) {
        this.FechaNa = FechaNa;
    }

    public String getDis() {
        return Dis;
    }

    public void setDis(String Dis) {
        this.Dis = Dis;
    }

    public String getPro() {
        return Pro;
    }

    public void setPro(String Pro) {
        this.Pro = Pro;
    }

    public String getDep() {
        return Dep;
    }

    public void setDep(String Dep) {
        this.Dep = Dep;
    }
}
