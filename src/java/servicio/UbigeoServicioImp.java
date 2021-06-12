package servicio;

import java.util.List;
import persistencia.ubigeoDao;
import persistencia.ubigeoDaoImp;

public class UbigeoServicioImp implements UbigeoServicio {
    
private ubigeoDao ubiDao;

    public UbigeoServicioImp() {
        ubiDao =new ubigeoDaoImp();
    }
    
    @Override
    public List listarId(String Dep, String Pro, String Dis) {
        return ubiDao.listarId(Dep, Pro, Dis);
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
