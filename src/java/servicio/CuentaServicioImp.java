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
    public String actualizar(String pass, String dni) {
        Cuenta cu=new Cuenta(pass);
        Persona per=new Persona(dni);
        Presentador pre=new Presentador(per, cu);
        String msg=cuDao.actualizar(pre);
        
        if (msg==null) {
            msg="Empleado Actualizado";
        } return msg;
    }

    @Override
    public Object[] validar(String user, String pass) {
        Presentador pre=cuDao.validar(user, pass);
        if(pre!=null){
            Object[]fil=new Object[3];
            fil[0]=pre.getPer().getCodPer();
            fil[1]=pre.getPer().getNombre();
            fil[2]=pre.getTip().getNombre();
            return fil;
        }
        return null;
    }
}
