package servicio;

import java.util.List;
import negocio.Cliente;
import persistencia.*;

public class clienteServicioImp implements clienteServicio {

    private ClienteDao Dao;

    public clienteServicioImp() {
        Dao = new ClienteDaoImo();
    }

    @Override
    public String grabarCliente(String nombre, String apellidos, String documento, String direccion, String telefono, String fecha, String dep, String pro, String dis, String usuario, String password) {
        Cliente cli = new Cliente(nombre, apellidos, documento, direccion, telefono, fecha, dep, pro, dis, usuario, password);
        String msg = Dao.grabarCliente(cli);
        return msg;
    }

    @Override
    public Object[] buscarCliente(String documento) {
        Cliente bp=Dao.buscarCliente(documento);
        if(bp!=null){
            Object[]fil=new Object[14];
            fil[0]=bp.getIdPerCli();
            fil[1]=bp.getNombre();
            fil[2]=bp.getApellidos();
            fil[3]=bp.getDocumento();
            fil[4]=bp.getDireccion();
            fil[5]=bp.getTelefono();
            fil[6]=bp.getFecha();
            fil[7]=bp.getNombreDep();
            fil[8]=bp.getNombreDis();
            fil[9]=bp.getNombrePro();
            fil[10]=bp.getIdDepartamento();
            fil[11]=bp.getIdProvincia();
            fil[12]=bp.getIddistrito();
            fil[13]=bp.getUsuario();
            return fil;
        }
        return null;
    }

    @Override
    public List listarCliente() {
        return Dao.listarCliente();
    }

    @Override
    public String EliminarCliente(int cod, String usu) {
        return Dao.EliminarCliente(cod, usu);
    }

}