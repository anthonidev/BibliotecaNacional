package negocio;

public class Cliente {
    private String nombre, apellidos, documento, direccion, telefono, fecha, Iddistrito, idProvincia, idDepartamento, usuario, password;
    private int IdPerCli;
    private String nombreDep, nombrePro, nombreDis;
    //Nombre Apellidos dpcumento Direccion Telefono FechaNa nombreDep nombrePro nombreDis  dep pro dis

    public Cliente() {
    }

    public Cliente(String nombre, String apellidos, String documento, String direccion, String telefono, String fecha, String nombreDep, String nombrePro, String nombreDis, String usuario, String password) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.documento = documento;
        this.direccion = direccion;
        this.telefono = telefono;
        this.fecha = fecha;
        this.nombreDep = nombreDep;
        this.nombrePro = nombrePro;
        this.nombreDis = nombreDis;
        this.usuario = usuario;
        this.password = password;
    }

    public Cliente(String nombre, String apellidos, String documento, String direccion, String telefono, String fecha, String distrito, String idProvincia, String idDepartamento, int IdPerCli, String nombreDep, String nombrePro, String nombreDis,String usuario) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.documento = documento;
        this.direccion = direccion;
        this.telefono = telefono;
        this.fecha = fecha;
        this.idProvincia = idProvincia;
        this.idDepartamento = idDepartamento;
        this.IdPerCli = IdPerCli;
        this.nombreDep = nombreDep;
        this.nombrePro = nombrePro;
        this.nombreDis = nombreDis;
        this.usuario = usuario;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getIdProvincia() {
        return idProvincia;
    }

    public void setIdProvincia(String idProvincia) {
        this.idProvincia = idProvincia;
    }

    public String getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(String idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIddistrito() {
        return Iddistrito;
    }

    public void setIddistrito(String Iddistrito) {
        this.Iddistrito = Iddistrito;
    }

    public int getIdPerCli() {
        return IdPerCli;
    }

    public void setIdPerCli(int IdPerCli) {
        this.IdPerCli = IdPerCli;
    }

    public String getNombreDep() {
        return nombreDep;
    }

    public void setNombreDep(String nombreDep) {
        this.nombreDep = nombreDep;
    }

    public String getNombrePro() {
        return nombrePro;
    }

    public void setNombrePro(String nombrePro) {
        this.nombrePro = nombrePro;
    }

    public String getNombreDis() {
        return nombreDis;
    }

    public void setNombreDis(String nombreDis) {
        this.nombreDis = nombreDis;
    }
}