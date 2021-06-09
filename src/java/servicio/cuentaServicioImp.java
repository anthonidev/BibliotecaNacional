package servicio;

import java.util.List;
import negocio.cuenta;
import persistencia.*;

public class cuentaServicioImp implements cuentaServicio{
    
    private cuentaDao cuDao;

    public cuentaServicioImp() {
        cuDao =new cuentaDaoImp();
    }

    @Override
    public String grabar(String user, String pass) {
        cuenta cu=new cuenta(user,pass);
        String msg=cuDao.grabar(cu);
        return msg;
    }

    @Override
    public String actualizar(int IdCuenta, String user, String pass) {
        cuenta cu = new cuenta(IdCuenta, user, pass);
        String msg = cuDao.actualizar(cu);
        return msg;
    }

    @Override
    public String eliminar(int IdCuenta) {
        return cuDao.eliminar(IdCuenta);
    }

    @Override
    public List listar() {
        return null;
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
    public Object[] buscarId(int IdCuenta) {
        cuenta cu=cuDao.buscarId(IdCuenta);
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
