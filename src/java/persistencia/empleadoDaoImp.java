package persistencia;

import negocio.Persona;
import negocio.Cuenta;
import negocio.Presentador;
import negocio.TipoEmpleado;

public class empleadoDaoImp implements empleadoDao {

    @Override
    public String grabar(Presentador pre) {
        String sql="call SP_GRABAREMPLEADO('"+pre.getPer().getNombre()+"','"+pre.getPer().getApellidos()+"','"+pre.getPer().getDni()+"','"+pre.getPer().getDireccion()+"','"+pre.getPer().getTelefono()+"','"+pre.getPer().getFechaNa()+"','"+pre.getPer().getIdDist()+"','"+pre.getPer().getIdPro()+"','"+pre.getPer().getIdDep()+"','"+pre.getCu().getUser()+"','"+pre.getCu().getPass()+"','"+pre.getTip().getNombre()+"')";
        return operacion.ejecutar(sql);
    }

    @Override
    public Presentador buscar(String dni) {
        String sql = "call SP_BUSCAREMPLEADO("+dni+")";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Persona per = new Persona();
            Cuenta cu=new Cuenta();
            TipoEmpleado tip=new TipoEmpleado();
            
            per.setNombre(fill[0].toString());
            per.setApellidos(fill[1].toString());
            per.setDni(fill[2].toString());
            per.setDireccion(fill[3].toString());
            per.setTelefono(fill[4].toString());
            per.setFechaNa(fill[5].toString());
            per.setIdDep(fill[6].toString());
            per.setIdPro(fill[7].toString());
            per.setIdDist(fill[8].toString());
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
        String sql="call SP_ACTUALIZAREMPLEADO('"+pre.getPer().getNombre()+"','"+pre.getPer().getApellidos()+"','"+pre.getPer().getDireccion()+"','"+pre.getPer().getTelefono()+"','"+pre.getPer().getFechaNa()+"','"+pre.getPer().getIdDist()+"','"+pre.getPer().getIdPro()+"','"+pre.getPer().getIdDep()+"','"+pre.getPer().getDni()+"','"+pre.getTip().getNombre()+"')";
        System.out.println(pre.getPer().getIdDep());
        return operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(String dni) {
        String sql = "call SP_ELIMINAREMPLEADO('"+dni+"')";
        return operacion.ejecutar(sql);
    }
}
