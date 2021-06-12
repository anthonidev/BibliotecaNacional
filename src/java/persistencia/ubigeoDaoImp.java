package persistencia;

import java.util.List;

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
}