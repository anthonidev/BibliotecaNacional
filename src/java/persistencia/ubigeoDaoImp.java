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
    public List listarDep() {
        String sql = "select * from ubigeo_peru_departments";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarDis(String cod) {
        String sql = "select * from ubigeo_peru_districts where province_id='" + cod + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarPro(String cod) {
        String sql = "select * from ubigeo_peru_provinces where department_id='" + cod + "'";
        List lis = operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }
}
