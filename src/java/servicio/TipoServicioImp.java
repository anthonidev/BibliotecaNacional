package servicio;

import java.util.List;
import persistencia.TipoDaoImp;
import persistencia.TipoDao;

public class TipoServicioImp implements TipoServicio {
    private TipoDao tipDao;

    public TipoServicioImp() {
        tipDao = new TipoDaoImp();
    }

    @Override
    public List listar() {
        return tipDao.listar();
    }
}
