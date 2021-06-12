package servicio;

import negocio.Cuenta;
import negocio.Persona;
import negocio.Presentador;
import negocio.TipoEmpleado;
import persistencia.empleadoDao;
import persistencia.empleadoDaoImp;

public class empleadoServicioImp implements empleadoServicio {

    private empleadoDao empDao;

    public empleadoServicioImp() {
        empDao = new empleadoDaoImp();
    }

    @Override
    public String grabar(String nombre, String apellidos, String dni, String direccion, String telefono, String fechana, String idDist, String idPro, String idDep, String user, String pass, String nomTipo) {
        Persona per=new Persona(nombre, apellidos, dni, direccion, telefono, fechana, idDist, idPro, idDep);
        Cuenta cu=new Cuenta(user, pass);
        TipoEmpleado tip=new TipoEmpleado(nomTipo);
        Presentador pre=new Presentador(per, cu, tip);
        String msg=empDao.grabar(pre);
        
        if (msg==null) {
            msg="Empleado Grabado";
        } return msg;
    }

    @Override
    public Object[] buscar(String Dni) {
        Presentador pre=empDao.buscar(Dni);
        if(pre!=null){
            Object[]fil=new Object[12];
            fil[0]=pre.getPer().getNombre();
            fil[1]=pre.getPer().getApellidos();
            fil[2]=pre.getPer().getDni();
            fil[3]=pre.getPer().getDireccion();
            fil[4]=pre.getPer().getTelefono();
            fil[5]=pre.getPer().getFechaNa();
            fil[6]=pre.getPer().getIdDep();
            fil[7]=pre.getPer().getIdPro();
            fil[8]=pre.getPer().getIdDist();
            fil[9]=pre.getCu().getUser();
            fil[10]=pre.getCu().getPass();
            fil[11]=pre.getTip().getNombre();
            return fil;
        }
        return null;
    }

    @Override
    public String actualizar(String nombre, String apellidos, String direccion, String telefono, String fechana, String idDist, String idPro, String idDep, String nomTipo) {
        Persona per=new Persona(nombre, apellidos, direccion, telefono, fechana, idDist, idPro, idDep);
        TipoEmpleado tip=new TipoEmpleado(nomTipo);
        Presentador pre=new Presentador(per, tip);
        String msg=empDao.actualizar(pre);
        
        if (msg==null) {
            msg="Empleado Actualizado";
        } return msg;
    }

    @Override
    public String eliminar(String dni) {
        String msg=empDao.eliminar(dni);
        
        if (msg==null) {
            msg="Empleado eliminado";
        } return msg;
    }
}
