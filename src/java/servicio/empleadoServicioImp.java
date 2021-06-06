/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicio;

import negocio.empleado;
import persistencia.empleadoDao;
import persistencia.empleadoDaoImp;

/**
 *
 * @author Anthoni
 */
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
        return empDao.eliminar(idCuenta);
    }

}
