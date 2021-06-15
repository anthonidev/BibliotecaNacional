package servicio;

import java.util.List;
import persistencia.UbigeoDaoImp;
import persistencia.UbigeoDao;

public class UbigeoServicioImp implements UbigeoServicio {
    private UbigeoDao ubiDao;

    public UbigeoServicioImp() {
        ubiDao =new UbigeoDaoImp();
    }

    @Override
    public List listarDep() {
        return ubiDao.listarDep();
    }

    @Override
    public List listarPro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listarDis() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}