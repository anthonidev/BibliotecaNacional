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
public class departamentoImp implements departamento{

    @Override
    public List listar() {
        String sql = "select * from ubigeo_peru_departments";
        List lis=operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }
    
}
