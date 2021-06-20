package servicio;

import java.util.List;
import negocio.Cuenta;
import negocio.Persona;
import negocio.Presentador;
import persistencia.*;

public class ClienteServicioImp implements ClienteServicio {
    private ClienteDao cliDao;

    public ClienteServicioImp() {
        cliDao = new ClienteDaoImp();
    }

    @Override
    public String grabarCliente(String nombre, String apellidos, String dni, String direccion, String telefono, String fecha, String dep, String pro, String dis, String usuario, String password) {
        Persona per = new Persona(nombre, apellidos, dni, direccion, telefono, fecha, dis, pro, dep);
        Cuenta cu=new Cuenta(usuario, password);
        Presentador pre=new Presentador(per, cu);
        String msg = cliDao.grabarCliente(pre);
        
        if (msg==null) {
            msg="Cliente Grabado";
        } return msg;
    }

    @Override
    public Object[] buscarCliente(String dni) {
        Persona per=new Persona(dni);
        Presentador pre=cliDao.buscarCliente(per);
        if(pre!=null){
            Object[]fil=new Object[11];
            fil[0]=pre.getPer().getCodPer();
            fil[1]=pre.getPer().getNombre();
            fil[2]=pre.getPer().getApellidos();
            fil[3]=pre.getPer().getDni();
            fil[4]=pre.getPer().getDireccion();
            fil[5]=pre.getPer().getTelefono();
            fil[6]=pre.getPer().getFechaNa();
            fil[7]=pre.getPer().getDep();
            fil[8]=pre.getPer().getPro();
            fil[9]=pre.getPer().getDis();
            fil[10]=pre.getCu().getUser();
            return fil;
        }
        return null;
    }

    @Override
    public List listarCliente() {
        return cliDao.listarCliente();
    }

    @Override
    public String eliminarCliente(int cod, String usu) {
        Persona per=new Persona(String.valueOf(cod));
        Cuenta cu=new Cuenta(usu, usu);
        Presentador pre=new Presentador(per, cu);
        String msg=cliDao.EliminarCliente(pre);
        
        if (msg==null) {
            msg="Cliente Eliminado";
        } return msg;
    }
}