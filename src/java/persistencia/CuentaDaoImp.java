package persistencia;

import negocio.Persona;
import negocio.Presentador;
import negocio.TipoEmpleado;

public class CuentaDaoImp implements CuentaDao{

    @Override
    public String actualizar(Presentador pre) {
        String sql="call SP_ACTUALIZARPASS('"+pre.getCu().getPass()+"','"+pre.getPer().getDni()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Presentador validar(String user, String pass) {
        String sql = "call SP_VALIDAR('"+user+"','"+pass+"')";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Persona per = new Persona();
            TipoEmpleado tip=new TipoEmpleado();
            per.setCodPer((int) fill[0]);
            per.setNombre(fill[1].toString());
            per.setApellidos(fill[2].toString());
            tip.setNombre(fill[3].toString());
            
            Presentador pre=new Presentador(per, tip);
            return pre;
        }
        return null;
    }
}
