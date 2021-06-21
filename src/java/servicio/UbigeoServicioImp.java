package servicio;

import java.util.List;
import negocio.Ubigeo;
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
        Ubigeo ubi=new Ubigeo(Dep);
        return ubiDao.listarPro(ubi);
    }

    @Override
    public List listarDis(String Dep, String Pro) {
        Ubigeo ubi=new Ubigeo(Dep, Pro);
        return ubiDao.listarDis(ubi);
    }
}