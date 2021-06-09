package persistencia;

import java.util.List;
import negocio.ubigeo;

public class ubigeoDaoImp implements ubigeoDao {

    @Override
    public List listarDep(String name) {
        String sql = "select * from ubigeo_peru_departments where name='" + name + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }
    
    @Override
    public List listarDepId(String id) {
        String sql = "select * from ubigeo_peru_departments where id='" + id + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarDis(String codDe,String name,String codPro) {
        String sql = "select * from ubigeo_peru_districts where name='" + name + "' and province_id='" + codPro + "' and department_id='" + codDe + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarDisId(String id) {
        String sql = "select * from ubigeo_peru_districts where id='" + id + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarPro(String codDe,String name) {
        String sql = "select * from ubigeo_peru_provinces where name='" + name + "' and department_id='" + codDe + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }


    @Override
    public ubigeo buscarDep(String id) {
        String sql = "select * from ubigeo_peru_departments where id='" + id + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            ubigeo de = new ubigeo();
            de.setId(fill[0].toString());
            de.setName(fill[1].toString());
            
            return de;
        }
        return null;
    }

    @Override
    public ubigeo buscarDis(String id) {
        String sql = "select * from ubigeo_peru_districts where id='" + id + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            ubigeo de = new ubigeo();
            de.setId(fill[0].toString());
            de.setName(fill[1].toString());
            
            return de;
        }
        return null;
    }

    @Override
    public ubigeo buscarPro(String id) {
        String sql = "select * from ubigeo_peru_provinces where id='" + id + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            ubigeo de = new ubigeo();
            de.setId(fill[0].toString());
            de.setName(fill[1].toString());
            return de;
        }
        return null;
    }


    @Override
    public List listarProId(String id) {
        String sql = "select * from ubigeo_peru_provinces where id='" + id + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }
}
