package servicio;

import negocio.tipoEmpleado;
import persistencia.tipoDao;
import persistencia.tipoDaoImp;

public class tipoServicioImp implements tipoServicio {

    private tipoDao tipDao;

    public tipoServicioImp() {
        tipDao = new tipoDaoImp();
    }

    @Override
    public Object[] buscar(String nombre) {
        tipoEmpleado tipEm = tipDao.buscar(nombre);
        if (tipEm != null) {
            Object[] fil = new Object[2];
            fil[0] = tipEm.getIdTip();
            fil[1] = tipEm.getNombre();
            return fil;
        }
        return null;
    }
    
    @Override
    public Object[] buscarId(int idTip) {
        tipoEmpleado tipEm = tipDao.buscarId(idTip);
        if (tipEm != null) {
            Object[] fil = new Object[2];
            fil[0] = tipEm.getIdTip();
            fil[1] = tipEm.getNombre();
            return fil;
        }
        return null;
    }
}
