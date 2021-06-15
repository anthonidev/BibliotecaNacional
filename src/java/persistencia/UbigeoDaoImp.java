package persistencia;

import java.util.List;

public class UbigeoDaoImp implements UbigeoDao {

    @Override
    public List listarDep() {
        String sql = "SELECT name FROM ubigeo_peru_departments";
        List lis = Operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
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