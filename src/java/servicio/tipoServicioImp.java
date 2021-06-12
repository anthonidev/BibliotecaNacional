package servicio;

import java.util.List;
import negocio.TipoEmpleado;
import persistencia.tipoDao;
import persistencia.tipoDaoImp;

public class tipoServicioImp implements tipoServicio {

    private tipoDao tipDao;

    public tipoServicioImp() {
        tipDao = new tipoDaoImp();
    }

    @Override
    public Object[] buscar(String nombre) {
        TipoEmpleado tipEm = tipDao.buscar(nombre);
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
        TipoEmpleado tipEm = tipDao.buscarId(idTip);
        if (tipEm != null) {
            Object[] fil = new Object[2];
            fil[0] = tipEm.getIdTip();
            fil[1] = tipEm.getNombre();
            return fil;
        }
        return null;
    }

    @Override
    public List listar() {
        return tipDao.listar();
    }
}
