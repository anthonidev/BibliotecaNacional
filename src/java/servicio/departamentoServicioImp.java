package servicio;

import java.util.List;
import persistencia.departamento;
import persistencia.departamentoImp;

public class departamentoServicioImp implements departamentoServicio {

    private departamento depDao;

    public departamentoServicioImp() {
        depDao = new departamentoImp();
    }

    @Override
    public List listar() {
        return depDao.listar();
    }

}
