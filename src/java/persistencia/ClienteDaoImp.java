package persistencia;
import java.util.List;
import negocio.Cuenta;
import negocio.Persona;
import negocio.Presentador;

public class ClienteDaoImp implements ClienteDao {

    @Override
    public String grabarCliente(Presentador pre) {
        String sql = "call GrabarCLiente('" + pre.getPer().getNombre() + "','" + pre.getPer().getApellidos() + "','" + pre.getPer().getDni()+ "','" + pre.getPer().getDireccion() + "','" + pre.getPer().getTelefono() + "','" + pre.getPer().getFechaNa()+ "','" + pre.getPer().getDep()+ "','" + pre.getPer().getPro() + "','" + pre.getPer().getDis() + "','" + pre.getCu().getUser()+ "','" + pre.getCu().getPass()+ "')";
        return Operacion.ejecutar(sql);
    }
    
    @Override
    public Presentador buscarCliente(Persona per) {
        String sql = "call BuscarCliente("+per.getDni()+")";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Cuenta cu=new Cuenta();
            
            per.setCodPer((int) fill[0]);
            per.setNombre((String) fill[1]);
            per.setApellidos((String) fill[2]);
            per.setDni((String) fill[3]);
            per.setDireccion((String) fill[4]);
            per.setTelefono((String) fill[5]);
            per.setFechaNa(fill[6].toString());
            per.setDep(fill[7].toString());
            per.setPro(fill[8].toString());
            per.setDis(fill[9].toString());
            cu.setUser(fill[10].toString());
            
            Presentador pre=new Presentador(per, cu);
            return pre;
        }
        return null;
    }

    @Override
    public List listarCliente() {
        String sql="select * from vista_listarClientes";
        List lis=Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }

    @Override
    public String eliminarCliente(Presentador pre) {
        String sql="call EliminarCliente("+pre.getPer().getDni()+",'"+pre.getCu().getUser()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String actualizarCliente(Presentador pre) {
        String sql="call ActualizarCliente('"+pre.getPer().getDni()+"','"+pre.getPer().getDireccion()+"','"+pre.getPer().getTelefono()+"','"+pre.getPer().getDep()+"','"+pre.getPer().getPro()+"','"+pre.getPer().getDis()+"','"+pre.getCu().getUser()+"')";
        return Operacion.ejecutar(sql);
    }

}