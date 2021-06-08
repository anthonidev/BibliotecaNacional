package persistencia;

import negocio.empleado;

public class empleadoDaoImp implements empleadoDao {

    @Override
    public String grabar(empleado emp) {
        String sql = "insert into empleado values(" + emp.getIdPerEm() + "," + emp.getIdCuenta() + "," + emp.getIdTip() + ")";
        return operacion.ejecutar(sql);
    }

    @Override
    public empleado buscarId(int IdPerEm) {
        String sql = "select * from empleado where IdPerEm=" + IdPerEm + "";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            empleado emp = new empleado();
            emp.setIdPerEm((int) fill[0]);
            emp.setIdCuenta((int) fill[1]);
            emp.setIdTip((int) fill[2]);
            return emp;
        }
        return null;
    }

    @Override
    public empleado buscar(int idCuenta) {
        String sql = "select * from empleado where idCuenta=" + idCuenta + "";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            empleado emp = new empleado();
            emp.setIdPerEm((int) fill[0]);
            emp.setIdCuenta((int) fill[1]);
            emp.setIdTip((int) fill[2]);
            return emp;
        }
        return null;
    }

    @Override
    public String eliminar(int idCuenta) {
        String sql = "delete from empleado where idCuenta=" + idCuenta + "";
        return operacion.ejecutar(sql);
    }
}
