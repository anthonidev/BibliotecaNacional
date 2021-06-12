package persistencia;

import negocio.Cliente;
import persistencia.Operacion;


public class ClienteDaoImp implements ClienteDao{

    @Override
    public String grabar(Cliente cli) {
        String sql = "insert into cliente values(" + cli.getIdPerCli() + "," + cli.getIdCuenta()+ ")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(int IdPerCli) {
        String sql= "delete from cliente where IdPerCli="+IdPerCli+"";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Cliente buscar(int idPerCli) {
        String sql = "select * from cliente where IdPerCli=" + idPerCli + "";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Cliente cu = new Cliente();
            cu.setIdPerCli((int) fill[0]);
            cu.setIdCuenta((int) fill[1]);
            return cu;
        }
        return null;
    }
}
