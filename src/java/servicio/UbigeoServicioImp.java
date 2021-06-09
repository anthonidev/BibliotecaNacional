package servicio;

import java.util.List;
import negocio.ubigeo;
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
    public List listarDepId(String id) {
        return ubiDao.listarDepId(id);
    }

    @Override
    public List listarDis(String codDe, String name, String codPro) {
        return ubiDao.listarDis(codDe, name, codPro);
    }

    @Override
    public List listarDisId(String id) {
        return ubiDao.listarDisId(id);
    }

    @Override
    public List listarPro(String codDe, String name) {
        return ubiDao.listarPro(codDe, name);
    }

    @Override
    public Object[] buscarDep(String id) {
        ubigeo cu=ubiDao.buscarDep(id);
        if(cu!=null){
            Object[]fil=new Object[2];
            fil[0]=cu.getId();
            fil[1]=cu.getName();
            return fil;
        }
        return null;
    }

    @Override
    public Object[] buscarDis(String id) {
        ubigeo cu=ubiDao.buscarDis(id);
        if(cu!=null){
            Object[]fil=new Object[2];
            fil[0]=cu.getId();
            fil[1]=cu.getName();
            return fil;
        }
        return null;
    }

    @Override
    public Object[] buscarPro(String id) {
        ubigeo cu=ubiDao.buscarPro(id);
        if(cu!=null){
            Object[]fil=new Object[2];
            fil[0]=cu.getId();
            fil[1]=cu.getName();
            return fil;
        }
        return null;
    }

   
    
    public List listarProId(String id) {
        return ubiDao.listarProId(id);
    }
}
