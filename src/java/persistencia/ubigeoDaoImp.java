package persistencia;

import java.util.List;
import negocio.Ubigeo;

public class ubigeoDaoImp implements ubigeoDao {

    @Override
    public List listarId(String Dep, String Pro, String Dis) {
        String sql = "SELECT id,province_id,department_id FROM ubigeo_peru_districts where name='"+Dis+"' AND province_id=(\n" +
                        "SELECT id FROM ubigeo_peru_provinces WHERE NAME='"+Pro+"') AND department_id=(\n" +
                        "SELECT id FROM ubigeo_peru_departments WHERE NAME='"+Dep+"');";
        
        System.out.println(Dep);
        System.out.println(Pro);
        System.out.println(Dis);
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarDep() {
        String sql = "SELECT name FROM ubigeo_peru_departments";
        List lis = operacion.listar(sql);
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
    public Ubigeo buscarDep(String id) {
        String sql = "select * from ubigeo_peru_departments where id='" + id + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Ubigeo de = new Ubigeo();
            de.setId(fill[0].toString());
            de.setName(fill[1].toString());
            
            return de;
        }
        return null;
    }

    @Override
    public Ubigeo buscarDis(String id) {
        String sql = "select * from ubigeo_peru_districts where id='" + id + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Ubigeo de = new Ubigeo();
            de.setId(fill[0].toString());
            de.setName(fill[1].toString());
            
            return de;
        }
        return null;
    }

    @Override
    public Ubigeo buscarPro(String id) {
        String sql = "select * from ubigeo_peru_provinces where id='" + id + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Ubigeo de = new Ubigeo();
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