package servicio;

import negocio.Cuenta;
import negocio.Persona;
import negocio.Presentador;
import persistencia.*;

public class CuentaServicioImp implements CuentaServicio{
    
    private CuentaDao cuDao;

    public CuentaServicioImp() {
        cuDao =new CuentaDaoImp();
    }

    @Override
    public void actualizar(String pass, String dni) {
        Cuenta cu=new Cuenta(pass);
        Persona per=new Persona(dni);
        Presentador pre=new Presentador(per, cu);
        cuDao.actualizar(pre);
    }

    @Override
    public Object[] validar(String user, String pass) {
        Cuenta cu=new Cuenta(user, pass);
        Presentador pre=cuDao.validar(cu);
        if(pre!=null){
            Object[]fil=new Object[3];
            fil[0]=pre.getPer().getCodPer();
            fil[1]=pre.getPer().getNombre();
            fil[2]=pre.getTip().getNombre();
            return fil;
        }
        return null;
    }

    @Override
    public Object[] validarCliente(String user, String pass) {
        Cuenta cu=new Cuenta(user, pass);
        Presentador pre=cuDao.validar(cu);
        if(pre!=null){
            Object[]fil=new Object[4];
            fil[0]=pre.getPer().getCodPer();
            fil[1]=pre.getPer().getNombre();
            fil[2]=pre.getPer().getApellidos();
            fil[3]=pre.getCu().getUser();
            return fil;
        }
        return null;
    }
}
