package negocio;

public class Persona {
    int codPer;
    String Nombre,Apellidos,Dni,Direccion,Telefono,FechaNa,IdDist,IdPro,IdDep; 
    
    public Persona() {
    }

    public Persona(String Nombre, String Apellidos, String Dni, String Direccion, String Telefono, String FechaNa, String IdDist, String IdPro, String IdDep) {
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Dni = Dni;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.FechaNa = FechaNa;
        this.IdDist = IdDist;
        this.IdPro = IdPro;
        this.IdDep = IdDep;
    }

    public Persona(int codPer, String Nombre, String Apellidos, String Dni, String Direccion, String Telefono, String FechaNa, String IdDist, String IdPro, String IdDep) {
        this.codPer = codPer;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Dni = Dni;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.FechaNa = FechaNa;
        this.IdDist = IdDist;
        this.IdPro = IdPro;
        this.IdDep = IdDep;
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

    public String getIdDist() {
        return IdDist;
    }

    public void setIdDist(String IdDist) {
        this.IdDist = IdDist;
    }

    public String getIdPro() {
        return IdPro;
    }

    public void setIdPro(String IdPro) {
        this.IdPro = IdPro;
    }

    public String getIdDep() {
        return IdDep;
    }

    public void setIdDep(String IdDep) {
        this.IdDep = IdDep;
    }
    
}
