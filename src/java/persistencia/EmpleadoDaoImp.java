package persistencia;

import java.util.ArrayList;
import java.util.List;
import negocio.Persona;
import negocio.Cuenta;
import negocio.Presentador;
import negocio.TipoEmpleado;
import vista.PresentadorGeneral;

public class EmpleadoDaoImp implements EmpleadoDao {

    @Override
    public String grabar(Presentador pre) {
        String sql="call SP_GRABAREMPLEADO('"+pre.getPer().getNombre()+"','"+pre.getPer().getApellidos()+"','"+pre.getPer().getDni()+"','"+pre.getPer().getDireccion()+"','"+pre.getPer().getTelefono()+"','"+pre.getPer().getFechaNa()+"','"+pre.getPer().getDis()+"','"+pre.getPer().getPro()+"','"+pre.getPer().getDep()+"','"+pre.getCu().getUser()+"','"+pre.getCu().getPass()+"','"+pre.getTip().getNombre()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Presentador buscar(Persona per) {
        String sql = "call SP_BUSCAREMPLEADO("+per.getDni()+")";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Cuenta cu=new Cuenta();
            TipoEmpleado tip=new TipoEmpleado();
            
            per.setNombre(fill[0].toString());
            per.setApellidos(fill[1].toString());
            per.setDni(fill[2].toString());
            per.setDireccion(fill[3].toString());
            per.setTelefono(fill[4].toString());
            per.setFechaNa(fill[5].toString());
            per.setDep(fill[6].toString());
            per.setPro(fill[7].toString());
            per.setDis(fill[8].toString());
            cu.setUser(fill[9].toString());
            cu.setPass(fill[10].toString());
            tip.setNombre(fill[11].toString());
            
            Presentador pre=new Presentador(per, cu, tip);
            return pre;
        }
        return null;
    }

    @Override
    public String actualizar(Presentador pre) {
        String sql="call SP_ACTUALIZAREMPLEADO('"+pre.getPer().getDireccion()+"','"+pre.getPer().getTelefono()+"','"+pre.getPer().getDis()+"','"+pre.getPer().getPro()+"','"+pre.getPer().getDep()+"','"+pre.getPer().getDni()+"','"+pre.getTip().getNombre()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(Persona per) {
        String sql = "call SP_ELIMINAREMPLEADO('"+per.getDni()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql="call SP_LISTAREMPLEADO()";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public List admin() {
        String sql="SELECT T.NOMBRE FROM EMPLEADO E INNER JOIN CUENTA C INNER JOIN PERSONA P INNER JOIN TIPOEMPLEADO T ON E.IDPEREM=P.IDPER WHERE (E.IDCUENTA=C.IDCUENTA AND E.IDTIP=T.IDTIP AND T.NOMBRE='admin')";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public List almacen() {
        String sql="SELECT T.NOMBRE FROM EMPLEADO E INNER JOIN CUENTA C INNER JOIN PERSONA P INNER JOIN TIPOEMPLEADO T ON E.IDPEREM=P.IDPER WHERE (E.IDCUENTA=C.IDCUENTA AND E.IDTIP=T.IDTIP AND T.NOMBRE='Almacen')";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public List jefe() {
        String sql="SELECT T.NOMBRE FROM EMPLEADO E INNER JOIN CUENTA C INNER JOIN PERSONA P INNER JOIN TIPOEMPLEADO T ON E.IDPEREM=P.IDPER WHERE (E.IDCUENTA=C.IDCUENTA AND E.IDTIP=T.IDTIP AND T.NOMBRE='Jefe de Control')";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public List rrhh() {
        String sql="SELECT T.NOMBRE FROM EMPLEADO E INNER JOIN CUENTA C INNER JOIN PERSONA P INNER JOIN TIPOEMPLEADO T ON E.IDPEREM=P.IDPER WHERE (E.IDCUENTA=C.IDCUENTA AND E.IDTIP=T.IDTIP AND T.NOMBRE='Recursos Humanos')";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public List recepcionista() {
        String sql="SELECT T.NOMBRE FROM EMPLEADO E INNER JOIN CUENTA C INNER JOIN PERSONA P INNER JOIN TIPOEMPLEADO T ON E.IDPEREM=P.IDPER WHERE (E.IDCUENTA=C.IDCUENTA AND E.IDTIP=T.IDTIP AND T.NOMBRE='Recepcionista')";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }
}
