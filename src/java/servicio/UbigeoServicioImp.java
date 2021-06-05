package servicio;

import java.util.List;
import persistencia.ubigeoDao;
import persistencia.ubigeoDaoImp;

public class UbigeoServicioImp implements UbigeoServicio{
    
private ubigeoDao ubiDao;

    public UbigeoServicioImp() {
        ubiDao =new ubigeoDaoImp();
    }

    @Override
    public List listarDep(String name) {
        return ubiDao.listarDep(name);
    }

    @Override
    public List listarDis(String codDe, String name, String codPro) {
        return ubiDao.listarDis(codDe, name, codPro);
    }

    @Override
    public List listarPro(String codDe, String name) {
        return ubiDao.listarPro(codDe, name);
    }

   
    
}
