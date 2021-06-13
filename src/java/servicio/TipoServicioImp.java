package servicio;

import java.util.List;
import negocio.TipoEmpleado;
import persistencia.TipoDaoImp;
import persistencia.TipoDao;

public class TipoServicioImp implements TipoServicio {
    private TipoDao tipDao;

    public TipoServicioImp() {
        tipDao = new TipoDaoImp();
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
