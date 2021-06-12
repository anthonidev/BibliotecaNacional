
package persistencia;

import java.util.List;
import negocio.TipoEmpleado;

public class tipoDaoImp implements tipoDao{

    @Override
    public TipoEmpleado buscar(String nombre) {
        String sql="select * from tipoempleado where nombre='"+nombre+"'";
        Object[] fill=operacion.buscar(sql);
        
        if(fill!=null){
            TipoEmpleado tip=new TipoEmpleado();
            tip.setIdTip((int)fill[0]);
            tip.setNombre((String) fill[1]);
            return tip;
        }
        return null;
    }
    
    public TipoEmpleado buscarId(int idTip) {
        String sql="select * from tipoempleado where idTip="+idTip+"";
        Object[] fill=operacion.buscar(sql);
        
        if(fill!=null){
            TipoEmpleado tip=new TipoEmpleado();
            tip.setIdTip((int)fill[0]);
            tip.setNombre((String) fill[1]);
            return tip;
        }
        return null;
    }

    @Override
    public List listar() {
        String sql = "select * from tipoempleado";
        List lis=operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }
}
