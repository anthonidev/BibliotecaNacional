package persistencia;

import negocio.Cuenta;
import negocio.Persona;
import negocio.Presentador;
import negocio.TipoEmpleado;

public class CuentaDaoImp implements CuentaDao {

    @Override
    public void actualizar(Presentador pre) {
        String sql = "call SP_ACTUALIZARPASS('" + pre.getCu().getPass() + "','" + pre.getPer().getDni() + "')";
        Operacion.ejecutar(sql);
    }

    @Override
    public Presentador validar(Cuenta cu) {
        String sql = "call SP_VALIDAR('" + cu.getUser() + "','" + cu.getPass() + "')";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Persona per = new Persona();
            TipoEmpleado tip = new TipoEmpleado();
            per.setCodPer((int) fill[0]);
            per.setNombre(fill[1].toString());
            tip.setNombre(fill[2].toString());

            Presentador pre = new Presentador(per, tip);
            return pre;
        }
        return null;
    }

    @Override
    public Presentador validarCliente(Cuenta cu) {
        String sql = "call ValidarCliente('" + cu.getUser() + "','" + cu.getPass() + "')";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Persona per = new Persona();
            per.setCodPer((int) fill[0]);
            per.setNombre(fill[1].toString());
            cu.setUser(fill[2].toString());
            Presentador pre = new Presentador(per, cu);
            return pre;
        }
        return null;
    }
}
