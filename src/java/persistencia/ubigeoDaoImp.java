/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;

/**
 *
 * @author Anthoni
 */
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
    public List listarDis(String codDe,String name,String codPro) {
        String sql = "select * from ubigeo_peru_districts where name='" + name + "' and province_id='" + codPro + "' and department_id='" + codDe + "'";
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
}
