package servicio;

import java.util.List;
import negocio.Persona;
import persistencia.*;

public class personaServicioImp implements personaServicio {

    private personaDao perDao;

    public personaServicioImp() {
        perDao = new personaDaoImp();
    }

    @Override
    public String grabar(String Nombre, String Apellidos, String Dni, String Direccion, String Telefono, String FechaNa, String IdDist, String IdPro, String IdDep) {
        Persona Per = new Persona(Nombre, Apellidos, Dni, Direccion, Telefono, FechaNa, IdDist, IdPro, IdDep);
        String msg = perDao.grabar(Per);
        return msg;
    }

    @Override
    public Object[] buscar(String Dni) {
        Persona per=perDao.buscar(Dni);
        if(per!=null){
            Object[]fil=new Object[10];
            fil[0]=per.getCodPer();
            fil[1]=per.getNombre();
            fil[2]=per.getApellidos();
            fil[3]=per.getDni();
            fil[4]=per.getDireccion();
            fil[5]=per.getTelefono();
            fil[6]=per.getFechaNa();
            fil[7]=per.getIdDist();
            fil[8]=per.getIdPro();
            fil[9]=per.getIdDep();
            return fil;
        }
        return null;
    }

    @Override
    public String actualizar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String eliminar(int IdPer) {
        return perDao.eliminar(IdPer);
    }

    @Override
    public List listar() {
        return perDao.listar();
    }

    @Override
    public int lastId() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object[] buscarId(int IdPer) {
        Persona per=perDao.buscarId(IdPer);
        if(per!=null){
            Object[]fil=new Object[10];
            fil[0]=per.getCodPer();
            fil[1]=per.getNombre();
            fil[2]=per.getApellidos();
            fil[3]=per.getDni();
            fil[4]=per.getDireccion();
            fil[5]=per.getTelefono();
            fil[6]=per.getFechaNa();
            fil[7]=per.getIdDist();
            fil[8]=per.getIdPro();
            fil[9]=per.getIdDep();
            return fil;
        }
        
        return null;
    }

}
