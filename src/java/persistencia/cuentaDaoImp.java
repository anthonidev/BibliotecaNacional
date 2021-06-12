package persistencia;

import negocio.Persona;
import negocio.Presentador;
import negocio.TipoEmpleado;

public class cuentaDaoImp implements cuentaDao{

    @Override
    public String actualizar(Presentador pre) {
        String sql="UPDATE CUENTA SET pass='"+pre.getCu().getPass()+"' WHERE IdCuenta=(SELECT C.IDCUENTA FROM EMPLEADO E\n" +
                    "INNER JOIN CUENTA C\n" +
                    "INNER JOIN PERSONA P\n" +
                    "ON P.IDPER=E.IDPEREM\n" +
                    "WHERE P.IDPER=(SELECT IDPER FROM PERSONA WHERE DNI='"+pre.getPer().getDni()+"'));\n";
        return operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(int IdCuenta) {
        String sql = "delete from cuenta where IdCuenta=" + IdCuenta + "";
         return operacion.ejecutar(sql);
    }

    @Override
    public Presentador validar(String user, String pass) {
        String sql = "SELECT P.IDPER,P.NOMBRE,T.NOMBRE\n" +
                    "FROM EMPLEADO E\n" +
                    "INNER JOIN CUENTA C\n" +
                    "INNER JOIN PERSONA P\n" +
                    "INNER JOIN TIPOEMPLEADO T\n" +
                    "ON E.IDPEREM=P.IDPER AND E.IDCUENTA=C.IDCUENTA AND E.IDTIP=T.IDTIP\n" +
                    "WHERE C.USER LIKE '"+user+"' AND C.PASS LIKE '"+pass+"'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Persona per = new Persona();
            TipoEmpleado tip=new TipoEmpleado();
            per.setCodPer((int) fill[0]);
            per.setNombre(fill[1].toString());
            tip.setNombre(fill[2].toString());
            
            Presentador pre=new Presentador(per, tip);
            return pre;
        }
        return null;
    }
}
