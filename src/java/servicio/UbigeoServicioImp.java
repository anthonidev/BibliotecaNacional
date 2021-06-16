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
    public List listarPro(String Dep) {
        return ubiDao.listarPro(Dep);
    }

    @Override
    public List listarDis(String Dep, String Pro) {
        return ubiDao.listarDis(Dep, Pro);
    }
}