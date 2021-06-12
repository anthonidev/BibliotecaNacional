
package persistencia;

import negocio.Cliente;


public class clienteDaoImp implements clienteDao{

    @Override
    public String grabar(Cliente cli) {
        String sql = "insert into cliente values(" + cli.getIdPerCli() + "," + cli.getIdCuenta()+ ")";
        return operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(int IdPerCli) {
        String sql= "delete from cliente where IdPerCli="+IdPerCli+"";
        return operacion.ejecutar(sql);
    }
    

    @Override
    public Cliente buscar(int idPerCli) {
        String sql = "select * from cliente where IdPerCli=" + idPerCli + "";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Cliente cu = new Cliente();
            cu.setIdPerCli((int) fill[0]);
            cu.setIdCuenta((int) fill[1]);
            return cu;
}
        return null;
    }
    

}
