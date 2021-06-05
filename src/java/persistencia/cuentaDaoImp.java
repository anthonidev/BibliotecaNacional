
package persistencia;

import java.util.List;
import negocio.cuenta;

public class cuentaDaoImp implements cuentaDao{

    @Override
    public String grabar(cuenta cu) {
        String sql = "insert into cuenta values(Null,'" + cu.getUser() + "','" + cu.getPass()+ "')";
        return operacion.ejecutar(sql);
    }

    @Override
    public String actualizar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String eliminar(int IdCuenta) {
        String sql = "delete from cuenta where IdCuenta=" + IdCuenta + "";
         return operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql = "select * from cuenta";
        List lis=operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }

    @Override
    public cuenta buscar(String user) {
        String sql = "select * from cuenta where user='" + user + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            cuenta cu = new cuenta();
            cu.setIdCuenta((int) fill[0]);
            cu.setUser((String) fill[1]);
            cu.setPass((String) fill[2]);
            return cu;
        }
        return null;
    }
    
}
