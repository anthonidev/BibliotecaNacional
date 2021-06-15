package persistencia;
import java.util.List;
import negocio.Cliente;

public class ClienteDaoImp implements ClienteDao {

    @Override
    public String grabarCliente(Cliente cli) {
        String sql = "call GrabarCLiente('" + cli.getNombre() + "','" + cli.getApellidos() + "','" + cli.getDocumento() + "','" + cli.getDireccion() + "','" + cli.getTelefono() + "','" + cli.getFecha() + "','" + cli.getNombreDep() + "','" + cli.getNombrePro() + "','" + cli.getNombreDis() + "','" + cli.getUsuario() + "','" + cli.getPassword() + "')";
        return Operacion.ejecutar(sql);
    }
    
    @Override
    public Cliente buscarCliente(String documento) {
        String sql = "call BuscarCLiente("+documento+")";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Cliente cl = new Cliente();
            cl.setIdPerCli((int) fill[0]);
            cl.setNombre((String) fill[1]);
            cl.setApellidos((String) fill[2]);
            cl.setDocumento((String) fill[3]);
            cl.setDireccion((String) fill[4]);
            cl.setTelefono((String) fill[5]);
            cl.setFecha(fill[6].toString());
            cl.setNombreDep(fill[7].toString());
            cl.setNombrePro(fill[8].toString());
            cl.setNombreDis(fill[9].toString());
            cl.setIddistrito(fill[10].toString());
            cl.setIdProvincia(fill[11].toString());
            cl.setIdDepartamento(fill[12].toString());
            cl.setUsuario(fill[13].toString());
            return cl;
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
    public String EliminarCliente(int cod, String usu) {
        String sql="call EliminarCliente("+cod+",'"+usu+"')";
        return Operacion.ejecutar(sql);
    }
}