
package servicio;

import java.util.List;
import negocio.cuenta;
import persistencia.*;

/**
 *
 * @author Anthoni
 */
public class cuentaServicioImp implements cuentaServicio{
    
    private cuentaDao cuDao;

    public cuentaServicioImp() {
    cuDao =new cuentaDaoImp();
    }
    

    @Override
    public String grabar(String user, String pass) {
        cuenta cli=new cuenta(user,pass);
        String msg=cuDao.grabar(cli);
        return msg;
    }

    @Override
    public String actualizar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String eliminar(int IdCuenta) {
        return cuDao.eliminar(IdCuenta);
    }

    @Override
    public List listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object[] buscar(String user) {
        cuenta cu=cuDao.buscar(user);
        if(cu!=null){
            Object[]fil=new Object[3];
            fil[0]=cu.getIdCuenta();
            fil[1]=cu.getUser();
            fil[2]=cu.getPass();
            return fil;
        }
        return null;
    }

    @Override
    public Object[] validar(String user, String pass) {
         if(user.equals("") || pass.equals("")){
            return null;
        }
        cuenta cu=cuDao.validar(user, pass);
        if(cu!=null){
            Object[]fil=new Object[3];
            fil[0]=cu.getIdCuenta();
            fil[1]=cu.getUser();
            fil[2]=cu.getPass();
            return fil;
        }
        return null;
    }
}
