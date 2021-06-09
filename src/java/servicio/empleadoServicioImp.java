package servicio;

import negocio.empleado;
import persistencia.empleadoDao;
import persistencia.empleadoDaoImp;

public class empleadoServicioImp implements empleadoServicio {

    private empleadoDao empDao;

    public empleadoServicioImp() {
        empDao = new empleadoDaoImp();
    }

    @Override
    public String grabar(int IdPerEm, int idCuenta, int IdTip) {
        empleado emp = new empleado(IdPerEm, idCuenta, IdTip);
        return empDao.grabar(emp);
    }

    @Override
    public Object[] buscarId(int IdPerEm) {
        empleado emp=empDao.buscarId(IdPerEm);
        if(emp!=null){
            Object[]fil=new Object[3];
            fil[0]=emp.getIdPerEm();
            fil[1]=emp.getIdCuenta();
            fil[2]=emp.getIdTip();
            return fil;
        }
        return null;
    }

    @Override
    public Object[] buscar(int idCuenta) {
        empleado emp=empDao.buscar(idCuenta);
        if(emp!=null){
            Object[]fil=new Object[3];
            fil[0]=emp.getIdPerEm();
            fil[1]=emp.getIdCuenta();
            fil[2]=emp.getIdTip();
            return fil;
        }
        return null;
    }

    @Override
    public String eliminar(int idCuenta) {
        String msg=empDao.eliminar(idCuenta);
        
        if (msg==null) {
            msg="Empleado eliminado";
        } return msg;
    }
}
